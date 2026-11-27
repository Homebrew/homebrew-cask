cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.8"
  sha256 arm:          "dae99f8b5f29335a04273d9a461ceeeb647551dc95cbf4ff707db908c80798d8",
         intel:        "1b532c38cde70352e4274b3ef177bb20bd2a1d4cc6a61eae5db4d99aa4d09fdd",
         arm64_linux:  "4652fa0ee2dbd3d9a456e8335b4b206778a44e1d2884a39b625cdd00769e0790",
         x86_64_linux: "639dd121257e8c90ff819265b7d31f03f373904523821e9397a79a0629546a5c"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.motrix.native.sfl*",
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}-#{arch}.AppImage", target: "Motrix.AppImage"

    zap trash: "~/.config/Motrix"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}-#{arch}.#{os}"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "motrix@beta"
end

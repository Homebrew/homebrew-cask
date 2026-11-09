cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.1"
  sha256 arm:          "c90b30594562958bf683e6ae2d47927a7c2fbb597f249406e7192eee793798b1",
         intel:        "b69170f8ee0e7a2c99f22cdbe4abbb570cab687987586b9381ce7c912b1e0019",
         arm64_linux:  "2427a7563d94f3c9a83421a0a5e35a88ce69814dc2408d4ccecaac43704ddbd0",
         x86_64_linux: "767874c764a8ce7a2c9a15d6a7a6e363d62a2232bf433d36a6fedb3a247923ba"

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

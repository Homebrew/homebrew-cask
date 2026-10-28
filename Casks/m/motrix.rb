cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.1.0"
  sha256 arm:          "cccd0afcfd2fe791bc21fb16c98f5e0afe9a63c5aea553ba4690aa6ac732846b",
         intel:        "04bb6db74dbab2276cb7697f36aa3be56087d3bb7f11244d4bcc166924536f5a",
         arm64_linux:  "c86f7f49f8d9d6ede48cce0b93631e97257f52d0caf3fc1b1e547def706e6e0c",
         x86_64_linux: "959a00baaf6fd982cb9db3e6359bee866c3cb20ea124541b21270aa24b1d2f81"

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

cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.2.0"
  sha256 arm:          "d076bed3e13ac2c44b31f119501c8ac78e554e8833b3519a9d1359a16cce40b0",
         intel:        "f81a57c6a9c3d06b58d13da9f8a9e1b1ff73e2a47654495149c3562b3586e7c1",
         arm64_linux:  "a8b3b521b79c10f1d0c1b19bdd69de1b041992699f35a6b529b083e5eff29a0e",
         x86_64_linux: "6308423ad98a0146a10d105a74af9e0835e99d98ad82d3c2ee392f07542bb848"

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

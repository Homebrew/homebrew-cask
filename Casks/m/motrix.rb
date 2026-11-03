cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.2.1"
  sha256 arm:          "870b9ba65a7bb5a84c7383ea5d0cf7ef599d246481dfac7e21e9e1d92ff4d13a",
         intel:        "203a61b5d40355c16c20d05ef47456e5a95ea818f9f3765540a4a294649e3c6c",
         arm64_linux:  "a0d443c52857913742b2484f1be84cf1c3063b703570b39d22b64313815660ed",
         x86_64_linux: "0f79647d64dd05b48d481ee448dc1ffa050c3e5bab575c8f77acea323e8de151"

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

cask "bazecor" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.13.0"
  sha256 arm:          "70ad1a8a9cf1e4c422fe1e3684fb3e4cc47a13cbf2725ccaa5f2962833fe88fc",
         intel:        "7c5e8004e02040d7c144f59a20d61f6d500adb6207f05b6a04b384c3f7fad2b9",
         x86_64_linux: "22e6abe94bfa81f421e26ff0b5826cccfee598fdd92572e6f8b8022498ece62f"

  on_macos do
    app "Bazecor.app"

    uninstall quit: "com.dygmalab.bazecor"

    zap trash: [
      "~/Library/Application Support/BAZECOR",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dygmalab.bazecor.sfl*",
      "~/Library/Logs/Bazecor",
      "~/Library/Preferences/com.dygmalab.bazecor.plist",
      "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Bazecor-#{version}-#{arch}.AppImage", target: "Bazecor.AppImage"

    zap trash: "~/.config/Bazecor"
  end

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.#{url_end}"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://github.com/Dygmalab/Bazecor"

  livecheck do
    url :url
    strategy :github_latest
  end
end

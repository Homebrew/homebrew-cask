cask "bazecor" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.11.0"
  sha256 arm:          "af6fafd879284242f38c588a0e2eef7579fb142aef1465fcddaa76db1b4e7683",
         intel:        "24cd83d9d6cf1aba8f3ef5455c4a26589d3c50060031bd9b14166254b63482da",
         x86_64_linux: "f264d31222a105dab20cc2899f6e5733a43421311aebf3f67e616f9762f6b1c3"

  on_macos do
    app "Bazecor.app"

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

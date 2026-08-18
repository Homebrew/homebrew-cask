cask "bananas" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.1.0"

  on_macos do
    sha256 "f757ad4dee34bd2b369171cdb7871aa72e0f49a87d22a2077a1b680b4ec79bc2"

    app "bananas.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "93764455b614b3606020a11c3a413d9d70e354e43b7cfa5b72feddcde53c65ed",
           x86_64_linux: "8766bacdabf5fdb6be3c66f1c02ca63e839ae68aa6130735a5f025fca16f97f5"

    app_image "bananas_#{arch}.AppImage", target: "Bananas.AppImage"
  end

  url "https://github.com/mistweaverco/bananas/releases/download/v#{version}/bananas_#{url_end}",
      verified: "github.com/mistweaverco/bananas/"
  name "Bananas Screen Sharing"
  desc "Cross-platform screen sharing tool"
  homepage "https://getbananas.net/"
end

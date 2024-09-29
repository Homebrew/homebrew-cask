cask "synology-image-assistant" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0-43"
  sha256 arm:   "322ba03618fff941ce4af008de124523cdfc604b1beb4bfaafdce6efbd636da3",
         intel: "07cf27ff568dc30c3be6ecc74116fc71ed479fd7499d53a7840cb56ef29b055e"

  url "https://global.download.synology.com/download/Utility/SynologyImageAssistant/#{version}/Mac/SynologyImageAssistant-#{version}-#{arch}.pkg"
  name "Synology Image Assistant"
  desc "Assistant to generate image previews of formats like HEIC and HEVC"
  homepage "https://www.synology.com/"

  livecheck do
    url "https://utyupdate.synology.com/electron/SynologyImageAssistant/latest-mac.yml"
    strategy :electron_builder
  end

  pkg "SynologyImageAssistant-#{version}-#{arch}.pkg"

  uninstall launchctl: "com.synology.Photos",
            quit:      "com.synology.Photos",
            pkgutil:   "com.synology.Photos",
            delete:    "/Applications/Synology Image Assistant.app"

  zap trash: [
    "~/Library/Application Scripts/Synology/SynologyImageAssistantStartup.*",
    "~/Library/Application Scripts/Synology/SynologyImageAssistantUninstaller.*",
    "~/Library/Application Support/Synology Image Assistant",
  ]
end

cask "synology-image-assistant" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1-54"
  sha256 arm:   "e9c0046cd2d6bfe6673725b772f509ce7bb6681b42481d91c5bac83bae12a778",
         intel: "da43dd988875fcace7447e63aae7f491a451008c558c4ae8c3b641db4b903bf2"

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

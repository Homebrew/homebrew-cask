cask "eez-studio" do
  arch arm: "arm64-mac", intel: "mac"
  os macos: "EEZ.Studio", linux: "EEZ-Studio"
  url_end = on_system_conditional macos: "-#{arch}.zip", linux: ".AppImage"

  version "0.29.0"

  on_macos do
    sha256 arm:   "4d93276d367b183c6959284ba06cc1b909e48594c821a292d541bc662359cf46",
           intel: "a9e660b5c91fbb8a56dccd5a64062890b99e4d602cca886362558acc3e600a7f"

    depends_on macos: :monterey

    app "EEZ Studio.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/hr.envox.eez.studio.sfl*",
      "~/Library/Application Support/eezstudio",
      "~/Library/Preferences/hr.envox.eez.studio.plist",
    ]
  end
  on_linux do
    sha256 "25bf62a1ed6e598901901c29e859f995ca768a451779e105463dca336b497552"

    depends_on arch: :x86_64

    app_image "EEZ-Studio-#{version}.AppImage", target: "EEZ Studio.AppImage"
  end

  url "https://github.com/eez-open/studio/releases/download/v#{version}/#{os}-#{version}#{url_end}",
      verified: "github.com/eez-open/studio/"
  name "EEZ Studio"
  desc "Visual tool for GUI development and T&M automation"
  homepage "https://www.envox.eu/studio/studio-introduction/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end

cask "dropzone" do
  version "4.1.6"
  sha256 "d5f82ebd934ad37dda5afc0933fa94c740c66e6803cfc3a9fad1bda6c719ce88"

  url "https://aptonic.com/releases/Dropzone-#{version}.zip"
  appcast "https://aptonic.com/releases/updates.xml"
  name "Dropzone"
  desc "Productivity app"
  homepage "https://aptonic.com/"

  app "Dropzone #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.aptonic.Dropzone#{version.major}",
    "~/Library/Application Scripts/com.aptonic.LaunchAtLogin",
    "~/Library/Application Support/Dropzone #{version.major}",
    "~/Library/Caches/com.aptonic.Dropzone#{version.major}",
    "~/Library/Containers/com.aptonic.Dropzone#{version.major}",
    "~/Library/Containers/com.aptonic.LaunchAtLogin",
    "~/Library/Preferences/com.aptonic.Dropzone#{version.major}.plist",
    "~/Library/Saved Application State/com.aptonic.Dropzone#{version.major}.savedState",
  ]
end

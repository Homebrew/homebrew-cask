cask "dropzone" do
  version "4.80.2"
  sha256 "920bbd3c89d4fefbd08f9a0c5ea19c611272234a32a03890373593b412dfb42a"

  url "https://aptonic.com/releases/Dropzone-#{version}.zip"
  name "Dropzone"
  desc "Productivity app"
  homepage "https://aptonic.com/"

  livecheck do
    url "https://aptonic.com/releases/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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

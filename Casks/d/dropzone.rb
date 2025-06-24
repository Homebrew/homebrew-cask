cask "dropzone" do
  version "4.80.58"
  sha256 "4986488f04cf771600019644d271935efe6c0ddef7171f9d237f57da7dfd0fb1"

  url "https://aptonic.com/releases/Dropzone-#{version}.zip"
  name "Dropzone"
  desc "Productivity app"
  homepage "https://aptonic.com/"

  livecheck do
    url "https://aptonic.com/releases/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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

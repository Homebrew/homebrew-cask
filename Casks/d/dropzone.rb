cask "dropzone" do
  version "4.80.77"
  sha256 "6f090cc401b3ceb2d2cbb27e89b5f0d287c29f9f264ed3d87ff065c31c9d85aa"

  url "https://aptonic.com/releases/Dropzone-#{version}.zip"
  name "Dropzone"
  desc "Productivity app"
  homepage "https://aptonic.com/"

  livecheck do
    url "https://aptonic.com/releases/updates.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "Dropzone #{version.major}.app"

  uninstall launchctl: "com.aptonic.LaunchAtLogin"

  zap trash: [
    "~/Library/Application Scripts/com.aptonic.Dropzone#{version.major}",
    "~/Library/Application Scripts/com.aptonic.Dropzone#{version.major}.Dropzone-Share-Extension-Non-MAS",
    "~/Library/Application Scripts/com.aptonic.LaunchAtLogin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aptonic.dropzone#{version.major}.sfl*",
    "~/Library/Application Support/com.aptonic.Dropzone#{version.major}",
    "~/Library/Application Support/Dropzone #{version.major}",
    "~/Library/Caches/com.aptonic.Dropzone#{version.major}",
    "~/Library/Containers/com.aptonic.Dropzone#{version.major}",
    "~/Library/Containers/com.aptonic.Dropzone#{version.major}.Dropzone-Share-Extension-Non-MAS",
    "~/Library/Containers/com.aptonic.LaunchAtLogin",
    "~/Library/HTTPStorages/com.aptonic.Dropzone#{version.major}*",
    "~/Library/Preferences/com.aptonic.Dropzone#{version.major}.plist",
    "~/Library/Saved Application State/com.aptonic.Dropzone#{version.major}.savedState",
    "~/Library/WebKit/com.aptonic.Dropzone#{version.major}",
  ]
end

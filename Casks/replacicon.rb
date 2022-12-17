cask "replacicon" do
  version "1.4,22"
  sha256 "5fee470ab27499c9c9581d1ca97c5a85e24a5f132ef7073c17f3c37ae571dabd"

  url "https://replacicon.app/builds/Replacicon_#{version.csv.second}.zip"
  name "Replacicon"
  desc "App icon replacement utility"
  homepage "https://replacicon.app/"

  livecheck do
    url "https://replacicon.app/updates.xml"
    strategy :sparkle
  end

  app "Replacicon.app"

  uninstall launchctl: "com.Replacicon.SetIcon",
            delete:    [
              "/Library/LaunchDaemons/com.Replacicon.SetIcon.plist",
              "/Library/PrivilegedHelperTools/com.Replacicon.SetIcon",
            ]

  zap trash: [
    "~/Library/Application Support/com.Replacicon.Replacicon",
    "~/Library/Caches/com.Replacicon.Replacicon",
    "~/Library/Preferences/com.Replacicon.Replacicon.plist",
  ]
end

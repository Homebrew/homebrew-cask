cask "replacicon" do
  version "2.1,51"
  sha256 "1d70ca2b7c0aed57417fe8bb52ed2428c3d8daacf832162714595b74dece0bda"

  url "https://replacicon.app/builds/Replacicon_#{version.csv.second}.zip"
  name "Replacicon"
  desc "App icon replacement utility"
  homepage "https://replacicon.app/"

  livecheck do
    url "https://replacicon.app/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

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

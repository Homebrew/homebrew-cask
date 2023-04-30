cask "replacicon" do
  version "1.6.1,25"
  sha256 "1a522b3b5fb093179433ef8bdcf45854ae989bf24a7c99d0441eb1be5d45d7e6"

  url "https://replacicon.app/builds/Replacicon_#{version.csv.second}.zip"
  name "Replacicon"
  desc "App icon replacement utility"
  homepage "https://replacicon.app/"

  livecheck do
    url "https://replacicon.app/updates.xml"
    strategy :sparkle
  end

  auto_updates true

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

cask "replacicon" do
  version "1.6.3,35"
  sha256 "e78cffbcde0fa9321e58f45c16d8178699a601ac3938acb1c3bedf77418f9acf"

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

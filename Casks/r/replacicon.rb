cask "replacicon" do
  version "2.1.1,54"
  sha256 "e1cdf6f6568bba307b85e2600ecb465ac0272c447ea979a938c5df80bc4682b6"

  url "https://replacicon.app/builds/Replacicon_#{version.csv.second}.zip"
  name "Replacicon"
  desc "App icon replacement utility"
  homepage "https://replacicon.app/"

  livecheck do
    url "https://replacicon.app/updates.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Replacicon.app"

  uninstall launchctl: "com.Replacicon.SetIcon",
            quit:      "com.Replacicon.Replacicon",
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

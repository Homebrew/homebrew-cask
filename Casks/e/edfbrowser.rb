cask "edfbrowser" do
  version "1.84,81b147ef06488445bd7ef8fe4b036648"
  sha256 "27217b7cc2f770921e51c31f16c2958ab5de8d61b762d889692df83bd3f61ccc"

  url "https://gitlab.com/whitone/EDFbrowser/uploads/#{version.csv.second}/EDFbrowser-#{version.csv.first}.dmg",
      verified: "gitlab.com/whitone/EDFbrowser/"
  name "EDFbrowser"
  desc "EDF+ and BDF+ viewer and toolbox"
  homepage "https://www.teuniz.net/edfbrowser"

  deprecate! date: "2024-07-17", because: :unmaintained

  app "EDFbrowser.app"

  zap trash: [
    "~/.EDFbrowser",
    "~/Library/Preferences/net.teuniz.EDFbrowser.plist",
    "~/Library/Saved Application State/net.teuniz.EDFbrowser.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

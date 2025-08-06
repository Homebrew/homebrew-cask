cask "screencast" do
  version "0.0.6"
  sha256 "0fb23d34ee3c94eb47233b42d2ac93de84d14dcdafe1e7205ce0a4341ee812f0"

  url "https://github.com/soh335/Screencast/releases/download/#{version}/Screencast.dmg"
  name "Screencast"
  desc "Simple screen video capture application"
  homepage "https://github.com/soh335/Screencast"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "Screencast.app"

  zap trash: "~/Library/Preferences/jp.makeitreal.Screencast.plist"

  caveats do
    requires_rosetta
  end
end

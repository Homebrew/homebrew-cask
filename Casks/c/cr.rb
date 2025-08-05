cask "cr" do
  version "3.0.56,10"
  sha256 "0b6ba965635e9f9af745421b2579c8c14d8e3931a77ebbb1afc427cd537c18f3"

  url "https://downloads.sourceforge.net/crengine/cr#{version.csv.first}-#{version.csv.second}.dmg"
  name "Cool Reader"
  desc "XML/CSS based eBook reader"
  homepage "https://sourceforge.net/projects/crengine/"

  deprecate! date: "2024-09-01", because: :unmaintained

  app "cr#{version.major}.app"

  zap trash: [
    "/Applications/cr#{version.major}.ini",
    "~/.cr#{version.major}",
    "~/Library/Saved Application State/org.coolreader.cr#{version.major}.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

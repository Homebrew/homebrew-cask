cask "cr" do
  version "3.0.56,10"
  sha256 "0b6ba965635e9f9af745421b2579c8c14d8e3931a77ebbb1afc427cd537c18f3"

  url "https://downloads.sourceforge.net/crengine/cr#{version.csv.first}-#{version.csv.second}.dmg"
  name "Cool Reader"
  desc "XML/CSS based eBook reader"
  homepage "https://sourceforge.net/projects/crengine/"

  livecheck do
    url "https://sourceforge.net/projects/crengine/rss?path=/CoolReader#{version.major}/cr#{version.major}-#{version.before_comma}"
    strategy :page_match do |page|
      match = page.match(%r{url=.*?/cr(\d+(?:\.\d+)+)-(\d+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "cr#{version.major}.app"

  zap trash: [
    "~/.cr#{version.major}",
    "~/Library/Saved Application State/org.coolreader.cr#{version.major}.savedState",
    "/Applications/cr#{version.major}.ini",
  ]
end

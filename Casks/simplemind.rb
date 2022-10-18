cask "simplemind" do
  version "1.32.0,b2585"
  sha256 "9cb1047d1c18972c2730471808ab9b46d26e21b72bf7ceeaa193cbeafe76c456"

  url "https://simpleapps.eu/simplemind/SMPOSX1_yQj3MSn64GXSTF36Rtj/SimpleMindMacOS#{version.csv.first.no_dots}#{version.csv.second}.dmg"
  name "SimpleMind"
  desc "Cross-platform Mind Mapping tool"
  homepage "https://simpleapps.eu/"

  livecheck do
    url "https://simpleapps.eu/download/full-edition/simplemind-pro-mac/"
    strategy :page_match do |page|
      match = page.match(%r{<b>Version: ([\d.]+) ([a-zA-Z0-9]+)</b>}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "SimpleMind.app"

  zap trash: [
    "~/Library/Caches/com.modelmakertools.simplemindosx",
    "~/Library/Preferences/com.modelmakertools.simplemindosx.plist",
  ]
end

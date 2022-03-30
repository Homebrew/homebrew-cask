cask "simplemind" do
  version "1.31.0,b2363"
  sha256 "caa5cf937137abd060fad08323e9ec753af4a4dcd05b5526e4f918d19be34677"

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

cask "simplemind" do
  version "1.32.1,b2610"
  sha256 "e9e7ecef30c388bdfbdede277029f8c8d87b402a95b0de7b9e060efb3dba70f2"

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

cask "simplemind" do
  version "2.4.0,b3040"
  sha256 "a4bdc06dd3b3e18cf6e1df73f4a632bd6f19cc8ee0016b3c8ed8920f361052c8"

  url "https://simpleapps.eu/simplemind/SM2Mac_G7Ynr4BfJYzhbHtCCTr/SimpleMindMacOS#{version.csv.first.no_dots}#{version.csv.second}.dmg"
  name "SimpleMind"
  desc "Cross-platform mind mapping tool"
  homepage "https://simpleapps.eu/"

  livecheck do
    url "https://simpleapps.eu/download/full-edition/simplemind-pro-mac/"
    regex(%r{<b>Version: ([\d.]+) ([a-zA-Z0-9]+)</b>}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "SimpleMind Pro.app"

  zap trash: [
    "~/Library/Caches/com.modelmakertools.simplemindosx",
    "~/Library/Preferences/com.modelmakertools.simplemindosx.plist",
  ]
end

cask "simplemind" do
  version "2.1.0,b2800"
  sha256 "5c32e5016b28e32040efc204b760273172f3c9fba01f5900c518c7f4903b0d7f"

  url "https://simpleapps.eu/simplemind/SM2Mac_G7Ynr4BfJYzhbHtCCTr/SimpleMindMacOS#{version.csv.first.no_dots}#{version.csv.second}.dmg"
  name "SimpleMind"
  desc "Cross-platform mind mapping tool"
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
  depends_on macos: ">= :high_sierra"

  app "SimpleMind Pro.app"

  zap trash: [
    "~/Library/Caches/com.modelmakertools.simplemindosx",
    "~/Library/Preferences/com.modelmakertools.simplemindosx.plist",
  ]
end

cask "simplemind" do
  version "2.6.0,b3082"
  sha256 "6b655d345d8ba8f3b6c6db29778c8667becff3a6a07a938369b7f2b6dcda72c4"

  url "https://simpleapps.eu/simplemind/SM2Mac_G7Ynr4BfJYzhbHtCCTr/SimpleMindMacOS#{version.csv.first.no_dots}#{version.csv.second}.dmg"
  name "SimpleMind"
  desc "Cross-platform mind mapping tool"
  homepage "https://simpleapps.eu/"

  livecheck do
    url "https://simpleapps.eu/download/full-edition/simplemind-pro-mac/"
    regex(%r{<b>\s*Version:\s*v?(\d+(?:\.\d+)+)\s+([a-z0-9]+)\s*</b>}i)
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

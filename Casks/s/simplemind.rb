cask "simplemind" do
  version "2.10.2,b3416"
  sha256 "b32d58819539d04e5690a6bc2486fe6ed1d8461b6711d5178b041328e4151be7"

  url "https://modelmakertools.com/simplemind/SM2Mac_G7Ynr4BfJYzhbHtCCTr/SimpleMindMacOS#{version.csv.first.no_dots}#{version.csv.second}.dmg"
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
  depends_on macos: :monterey

  app "SimpleMind Pro.app"

  uninstall quit: "com.modelmakertools.simplemindosx"

  zap trash: [
    "~/Library/Caches/com.modelmakertools.simplemindosx",
    "~/Library/Preferences/com.modelmakertools.simplemindosx.plist",
  ]
end

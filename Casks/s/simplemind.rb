cask "simplemind" do
  version "2.8.0,b3221"
  sha256 "da5844c9cc8a675aae26e19731ed5662afe29de729216d5ed26fb5016264cf13"

  url "https://modelmakertools.com/simplemind/SM2Mac_G7Ynr4BfJYzhbHtCCTr/SimpleMindMacOS#{version.csv.first.no_dots}#{version.csv.second}.dmg",
      verified: "modelmakertools.com/simplemind/"
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
  depends_on macos: ">= :big_sur"

  app "SimpleMind Pro.app"

  zap trash: [
    "~/Library/Caches/com.modelmakertools.simplemindosx",
    "~/Library/Preferences/com.modelmakertools.simplemindosx.plist",
  ]
end

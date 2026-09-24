cask "poker-copilot" do
  version "8.24,10576"
  sha256 "24508024a15e4a9e42f7d606a4a97e4fffeb706c311b2837fc47bbe5c4310e78"

  url "https://static.pokercopilot.com/pokercopilot_macos_universal_#{version.csv.first.dots_to_underscores}_build_#{version.csv.second}.dmg"
  name "Poker Copilot"
  desc "Online poker HUD and tracking software"
  homepage "https://pokercopilot.com/"

  livecheck do
    url :homepage
    regex(/href=.*?pokercopilot_macos_universal[._-]v?(\d+(?:[._]\d+)+)[._-]build[._-](\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  depends_on :macos

  app "Poker Copilot.app"

  zap trash: [
    "~/Library/Application Support/com.barbarysoftware.pokercopilot",
    "~/Library/Logs/Poker Copilot.log",
    "~/Library/Preferences/com.install4j.4318-8431-7919-3424.23.plist",
  ]
end

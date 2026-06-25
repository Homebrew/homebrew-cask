cask "poker-copilot" do
  version "8.15,10070"
  sha256 "9b182eadc90b2adf90c30c38b209d6983c2127641014af1770d980b72f03f22b"

  url "https://static.pokercopilot.com/pokercopilot_macos_#{version.csv.first.dots_to_underscores}_build_#{version.csv.second}.dmg"
  name "Poker Copilot"
  desc "Online poker HUD and tracking software"
  homepage "https://pokercopilot.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/pokercopilot_macos[._-]v?(\d+(?:[._]\d+)+)[._-]build[._-](\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  depends_on :macos

  app "Poker Copilot.app"

  zap trash: "~/Library/Application Support/com.barbarysoftware.pokercopilot"

  caveats do
    requires_rosetta
  end
end

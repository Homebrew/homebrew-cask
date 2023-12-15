cask "poker-copilot" do
  version "7.45,9257"
  sha256 "f54980935de3a9bcf9f969e5c078d302861ef2b6483d88b7ab2775d1286dc166"

  url "https://static.pokercopilot.com/pokercopilot_macos_#{version.csv.first.dots_to_underscores}_build_#{version.csv.second}.dmg"
  name "Poker Copilot"
  desc "Online poker HUD and tracking software"
  homepage "https://pokercopilot.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/pokercopilot_macos[._-]v?(\d+(?:[._]\d+)+)[._-]build[._-](\d+)\.dmg}i)
    strategy :page_match do |page|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Poker Copilot.app"

  zap trash: "~/Library/Application Support/com.barbarysoftware.pokercopilot"
end

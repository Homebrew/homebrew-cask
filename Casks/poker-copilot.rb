cask "poker-copilot" do
  version "7.26,8855"
  sha256 "32fedd6ac7d39a03c58a376f2247b82cc8b7473d7ae38dc91c674c14f2f51ad4"

  url "https://static.pokercopilot.com/pokercopilot_macos_#{version.csv.first.dots_to_underscores}_build_#{version.csv.second}.dmg"
  name "Poker Copilot"
  desc "Online poker HUD and tracking software"
  homepage "https://pokercopilot.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/pokercopilot_macos[._-]v?(\d+(?:[._]\d+)+)_build_(\d+)\.dmg}i)
    strategy :page_match do |page|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Poker Copilot.app"

  zap trash: [
    "~/Library/Application Support/com.barbarysoftware.pokercopilot",
  ]
end

cask "poker-copilot" do
  version "7.26.build.8855"
  sha256 "32fedd6ac7d39a03c58a376f2247b82cc8b7473d7ae38dc91c674c14f2f51ad4"

  url "https://static.pokercopilot.com/pokercopilot_macos_#{version.dots_to_underscores}.dmg"
  name "Poker Copilot"
  desc "Online poker HUD and tracking software"
  homepage "https://pokercopilot.com/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/pokercopilot_macos_([\d_]+build_\d+).dmg}i)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  app "Poker Copilot.app"
end

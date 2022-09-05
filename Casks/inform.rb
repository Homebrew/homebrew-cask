cask "inform" do
  version "10.1.2,1_82_3"
  sha256 "01160096f0d19b1674c56c2dd2c8dc6f39b09cdccc1452b549843690c82b4a94"

  url "https://github.com/ganelson/inform/releases/download/v#{version.csv.first}/Inform_#{version.csv.first.dots_to_underscores}_macOS_#{version.csv.second}.dmg",
      verified: "github.com/ganelson/inform"
  name "Inform"
  desc "Writing system for interactive fiction based on natural language"
  homepage "https://ganelson.github.io/inform-website"

  livecheck do
    url "https://github.com/ganelson/inform/releases/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/v?(\d+(?:\.\d+)+)/.*?macOS[._-](\d+(?:_\d+)+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :mojave"

  app "Inform.app"
end

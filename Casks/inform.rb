cask "inform" do
  version "10.1.2,1_82_2"
  sha256 "aacb91f097850da3138e040f5c2fbfa467efc22e49db9038be64761648b81648"

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

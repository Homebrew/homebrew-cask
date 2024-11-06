cask "balsamiq-wireframes" do
  version "4.8.0"
  sha256 "9963d1a7259a6cbf180af2792a2e336d09ebd64112f71cd5c83fbbc6121ce031"

  url "https://builds.balsamiq.com/bwd/Balsamiq%20Wireframes%20#{version}.dmg"
  name "Balsamiq Wireframes"
  desc "UI wireframing tool"
  homepage "https://balsamiq.com/"

  livecheck do
    url "https://builds.balsamiq.com/bwd/mac.jsonp"
    regex(/callback\((.+)\)/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(match[1])
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Balsamiq Wireframes.app"

  zap trash: [
    "~/Library/Caches/BalsamiqMockups#{version.major}.*",
    "~/Library/Preferences/BalsamiqMockups#{version.major}",
    "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
    "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
  ]
end

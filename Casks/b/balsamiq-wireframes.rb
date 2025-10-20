cask "balsamiq-wireframes" do
  version "4.8.6"
  sha256 "3817553ac4801b3a245b55f1996870371cd3599a8c99f0054dd796bc09ceeca7"

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

  app "Balsamiq Wireframes.app"

  zap trash: [
    "~/Library/Caches/BalsamiqMockups#{version.major}.*",
    "~/Library/Preferences/BalsamiqMockups#{version.major}",
    "~/Library/Preferences/BalsamiqMockups#{version.major}.*",
    "~/Library/Saved Application State/BalsamiqMockups#{version.major}.*",
  ]
end

cask "cura-lulzbot" do
  version "3.6.21,ce3e47a08065c6687f0a226a4f1b2dc3"
  sha256 "1548b15734ab2299f2fb8106e1b6f3242e5efe66286306f64b7675a0f354ff2c"

  url "https://gitlab.com/lulzbot3d/cura-le/cura-lulzbot/uploads/#{version.csv.second}/cura-lulzbot_#{version.csv.first}.dmg",
      verified: "gitlab.com/lulzbot3d/cura-le/cura-lulzbot/"
  name "Cura LulzBot Edition"
  desc "3D printing solution"
  homepage "https://www.lulzbot.com/learn/tutorials/cura-lulzbot-edition-installation-macos"

  livecheck do
    url "https://gitlab.com/api/v4/projects/15405668/releases"
    regex(%r{/uploads/([0-9a-f]+)/cura[._-]?lulzbot[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  app "cura-lulzbot.app"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura-lulzbot",
    "~/Library/Preferences/org.pythonmac.unspecified.cura-lulzbot.cura-lulzbot",
    "~/Library/Saved Application State/org.pythonmac.unspecified.cura-lulzbot.savedState",
  ]
end

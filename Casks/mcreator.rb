cask "mcreator" do
  version "2022.2.33511"
  sha256 "d390bed0341b8dc69252570818afa2fe6ed103a38bf877243c3783731b06c9b2"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.64bit.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url "https://github.com/MCreator/MCreator/releases/"
    regex(%r{v?(\d+(?:\.\d+)+)/MCreator\.v?(\d+(?:\.\d+)+)\.Mac\.64bit\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].to_s }
    end
  end

  app "MCreator.app"

  zap trash: "~/.mcreator"
end

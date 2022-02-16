cask "mcreator" do
  version "2021.3.54000"
  sha256 "14404e7e46807dbc9ea0cbfa78234d1e958856c22c778bfc9612d3cf4902f0db"

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

cask "mcreator" do
  version "2022.2.34517"
  sha256 "fb88ca5a85fff0724ad18bc6b1045c162237993d08576269d9281eddb3dd37ff"

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

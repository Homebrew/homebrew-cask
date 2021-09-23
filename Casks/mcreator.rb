cask "mcreator" do
  version "2021.2.36710"
  sha256 "c88ef69d43de0addf063ba500d977ca44797ca24d41e0943aa9be80f27df057e"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.64bit.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url "https://github.com/MCreator/MCreator/releases/"
    regex(%r{(\d+(?:\.\d+)*)/MCreator\.(\d+(?:\.\d+)*)\.Mac\.64bit\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].to_s }
    end
  end

  app "MCreator.app"

  zap trash: "~/.mcreator"
end

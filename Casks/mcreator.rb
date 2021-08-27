cask "mcreator" do
  version "2021.2.35315"
  sha256 "6e86636c958d42fd45879d2faffcdea47a39ffceb4f8f1a1f9c4e9ebe3326e6d"

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

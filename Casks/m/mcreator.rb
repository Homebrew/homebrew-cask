cask "mcreator" do
  arch arm: "aarch64", intel: "64bit"

  version "2025.2.28610"
  sha256 arm:   "3c64971ab4415f6891d308256731e2747f97c46f6a1086e5ffcadacb2ea6cbf3",
         intel: "6f2922e16a4b025da084c533a57bb57f95ba29e7ecbdc169c1bb535572bf8776"

  url "https://github.com/MCreator/MCreator/releases/download/#{version}/MCreator.#{version.major_minor}.Mac.#{arch}.dmg",
      verified: "github.com/MCreator/MCreator/"
  name "MCreator"
  desc "Software used to make Minecraft Java Edition mods"
  homepage "https://mcreator.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "MCreator.app"

  zap trash: "~/.mcreator"
end

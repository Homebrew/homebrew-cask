cask "dofus-retro" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://download.ankama.com/launcher/full/mac/",
        verified: "download.ankama.com/"
  end

  name "Dofus Retro"
  desc "Play DOFUS Retro to see how the legend began!"
  homepage "https://www.dofus.com/en/dofus-retro"

  depends_on macos: ">= :yosemite"

  app "Dofus Retro.app"
end

cask "dofus-retro" do
  version :latest
  sha256 :no_check

  language "en", default: true do
    url "https://dofusretro.cdn.ankama.com/installers/release/dofus-retro-mac64.tar.gz",
        verified: "dofusretro.cdn.ankama.com/"
  end

  name "Dofus Retro"
  desc "Play DOFUS Retro to see how the legend began!"
  homepage "https://www.dofus.com/en/dofus-retro"

  depends_on macos: ">= :yosemite"

  app "Dofus Retro.app"

  uninstall quit: "Dofus Retro"

  zap trash: [
    "~/Library/Application Support/Dofus Retro",
    "~/Library/Preferences/com.dofus.d1elauncher.plist",
    "~/Library/Application Support/zaap/repositories/production/dofus",
    "~/Library/Saved Application State/com.dofus.d1elauncher.savedState"
  ]
end

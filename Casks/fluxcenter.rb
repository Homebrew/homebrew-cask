cask "fluxcenter" do
  version "1.2.16.47921"
  sha256 "b5114d716950881732878d8a8cc1c027e47b57ea90d579afea6637ac89b87d14"

  url "https://www.flux.audio/wp-content/uploads/files/Center/MacOS/Flux_FluxCenter_MacOS_Installer_(#{version}).dmg"
  appcast "https://www.flux.audio/wp-content/uploads/files/Center/changeLog.txt"
  name "FluxCenter"
  homepage "https://www.flux.audio/"

  app "FluxCenter.app"
end

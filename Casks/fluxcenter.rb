cask "fluxcenter" do
  version "21.01.0.49961"
  sha256 "f4db76870ea27cdb540ff20fa49cca9be56fed5859365329008379e08aebc212"

  url "https://flux-caffeine.s3-accelerate.amazonaws.com/files/Flux/CENTER%20%20INSTALLERS/Flux_FluxCenter_MacOS_Installer_%28#{version}%29.dmg",
      verified: "flux-caffeine.s3-accelerate.amazonaws.com/"
  name "FluxCenter"
  desc "Audio production software"
  homepage "https://www.flux.audio/"

  livecheck do
    url "https://www.flux.audio/download/"
    strategy :page_match
    regex(%r{href=.*?/Flux_FluxCenter_MacOS_Installer_%28(\d+(?:\.\d+)*)%29\.dmg}i)
  end

  app "FluxCenter.app"
end

cask "fluxcenter" do
  version "21.04.1.50040"
  sha256 "f542cbea1d24564f4836b3d8d7be9f79d6204e5028af95ee05cc95ae15ea3f3a"

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

  depends_on macos: ">= :sierra"

  app "FluxCenter.app"
end

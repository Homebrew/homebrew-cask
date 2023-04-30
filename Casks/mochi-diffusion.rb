cask "mochi-diffusion" do
  version "3.2"
  sha256 "7966713569dc76b2698ed0a1944ef9bee2fa056812efcb01638280b76d1c6e29"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mochi Diffusion.app"

  zap trash: "~/Library/Application Support/MochiDiffusion"
end

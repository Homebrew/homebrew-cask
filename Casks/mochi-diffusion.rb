cask "mochi-diffusion" do
  version "2.4.1"
  sha256 "c1e9a5646cde7a942fae72ef683d949d51f79b2304b19b126384a83a10b0ad67"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  app "Mochi Diffusion.app"

  zap trash: "~/Library/Application Support/MochiDiffusion"
end

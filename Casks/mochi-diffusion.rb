cask "mochi-diffusion" do
  version "2.3"
  sha256 "dc2b3a0c9f09c75d54ccd377d7091efd66fc3aa304a58bfcda93cb96128a2ccb"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  app "Mochi Diffusion.app"

  zap trash: "~/Library/Application Support/MochiDiffusion"
end

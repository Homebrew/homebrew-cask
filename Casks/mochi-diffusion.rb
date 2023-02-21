cask "mochi-diffusion" do
  version "2.4"
  sha256 "6d6e0cbfe2b2c8e3ee91cb306a3debda7fe4e63cb67d93c64cc51f6a3c964ea7"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  app "Mochi Diffusion.app"

  zap trash: "~/Library/Application Support/MochiDiffusion"
end

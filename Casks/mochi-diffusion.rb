cask "mochi-diffusion" do
  version "3.1"
  sha256 "bd6717fb0f9e034b0e68554bfb7243216de409c1e5ad752f70f1c726802f77f3"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mochi Diffusion.app"

  zap trash: "~/Library/Application Support/MochiDiffusion"
end

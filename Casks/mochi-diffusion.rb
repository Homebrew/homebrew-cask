cask "mochi-diffusion" do
  version "4.1"
  sha256 "dde00c2cd822ee33f7a4c7d4bfe767dd8831d37556258c5f6b0571472e318331"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mochi Diffusion.app"

  zap trash: [
    "~/Library/Application Support/MochiDiffusion",
    "~/Library/HTTPStorages/com.joshua-park.Mochi-Diffusion",
    "~/Library/Preferences/com.joshua-park.Mochi-Diffusion.plist",
  ]
end

cask "mochi-diffusion" do
  version "6.2"
  sha256 "b8fcfb33f86fe2d6b34200be717cfba60d8b8f0eb2e2eb4c719bc90420a13042"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Mochi Diffusion.app"

  zap trash: [
    "~/Library/Application Support/MochiDiffusion",
    "~/Library/HTTPStorages/com.joshua-park.Mochi-Diffusion",
    "~/Library/Preferences/com.joshua-park.Mochi-Diffusion.plist",
  ]
end

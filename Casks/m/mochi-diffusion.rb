cask "mochi-diffusion" do
  version "7.0"
  sha256 "7d3a998442075d463d8e6b72ccbbc811996e5e8c948099b4190be82a54391129"

  url "https://github.com/MochiDiffusion/MochiDiffusion/releases/download/v#{version}/Mochi.Diffusion.#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Mochi Diffusion.app"

  zap trash: [
    "~/Library/Application Support/MochiDiffusion",
    "~/Library/Caches/com.joshua-park.Mochi-Diffusion",
    "~/Library/HTTPStorages/com.joshua-park.Mochi-Diffusion",
    "~/Library/Preferences/com.joshua-park.Mochi-Diffusion.plist",
  ]
end

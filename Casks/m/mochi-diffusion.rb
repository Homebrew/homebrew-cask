cask "mochi-diffusion" do
  version "6.3"
  sha256 "a5c5e672eb3f8c741a834eeab9c96bc96346135eff05056ca0b8e02baf43a63f"

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
    "~/Library/HTTPStorages/com.joshua-park.Mochi-Diffusion",
    "~/Library/Preferences/com.joshua-park.Mochi-Diffusion.plist",
  ]
end

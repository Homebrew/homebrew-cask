cask "mochi-diffusion" do
  version "6.1.1"
  sha256 "b49d0ff7a7b2115698de659414616b4061d83c6d6bc6607acb9df9c5a28f50c3"

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

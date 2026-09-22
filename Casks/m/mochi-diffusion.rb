cask "mochi-diffusion" do
  version "6.1"
  sha256 "a034afac11e7ebb031a527f4abae268aece5814ae4e5f6e2b294cee6d06c0c6f"

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

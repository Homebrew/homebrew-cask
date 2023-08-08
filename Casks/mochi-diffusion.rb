cask "mochi-diffusion" do
  version "4.1.3"
  sha256 "199897a42e1339c99928c511e19e33ba88c63488b80cc327f861c65a07f3f168"

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

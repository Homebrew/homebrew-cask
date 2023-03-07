cask "mochi-diffusion" do
  version "3.0"
  sha256 "0d91f07fdfb8780cbeae01cc439b2dc613e2dc3062699ffa38b504bd541d7d67"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mochi Diffusion.app"

  zap trash: "~/Library/Application Support/MochiDiffusion"
end

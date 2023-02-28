cask "mochi-diffusion" do
  version "2.5"
  sha256 "df77d560897422c52f001c5acb2f4d035d0a5fa21163cbd958ad623c859172d6"

  url "https://github.com/godly-devotion/MochiDiffusion/releases/download/v#{version}/MochiDiffusion_v#{version}.dmg"
  name "Mochi Diffusion"
  desc "Run Stable Diffusion natively"
  homepage "https://github.com/godly-devotion/MochiDiffusion"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mochi Diffusion.app"

  zap trash: "~/Library/Application Support/MochiDiffusion"
end

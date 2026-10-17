cask "nuphos" do
  arch arm: "arm64", intel: "x64"

  version "0.82.0"
  sha256 arm:   "d872dd78f1b4b554324c8d0edc66cb6afe7f6cb2184fa0227f8e13702777f0c7",
         intel: "09fde896d58d7f46e11e8d19a32070e623edca9b3d26dad309191ad1b0dd92ca"

  url "https://nuphos-releases.s3.amazonaws.com/desktop/Nuphos-#{version}-#{arch}.dmg"
  name "Nuphos"
  desc "Agent workspace for running and collaborating on coding agents"
  homepage "https://nuphos.ai/"

  livecheck do
    url "https://github.com/nuphos/nuphos.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Nuphos.app"

  zap trash: [
    "~/Library/Application Support/Nuphos",
    "~/Library/Preferences/ai.nuphos.desktop.plist",
  ]
end

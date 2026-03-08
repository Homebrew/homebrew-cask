cask "freeorion" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.1.2"
  sha256 arm:   "1ff2aa3c1c3f2c80b65f3cd4f4f79608e48fb7d6db08431d8d8e4da17da4e6c7",
         intel: "5dcd2f1170284b609aab9769b9ae7d0dd6d78d8c24a724c4a716acb0ef2bc875"

  url "https://github.com/freeorion/freeorion/releases/download/v#{version}/FreeOrion_v#{version}_MacOSX_10.15_#{arch}.dmg",
      verified: "github.com/freeorion/"
  name "FreeOrion"
  desc "Turn-based space empire and galactic conquest game"
  homepage "https://freeorion.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "FreeOrion.app"

  zap trash: [
    "~/Library/Application Support/FreeOrion",
    "~/Library/Saved Application State/org.freeorion.FreeOrion.savedState",
  ]
end

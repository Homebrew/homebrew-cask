cask "mirrorkit" do
  version "1.0.0"
  sha256 "62cc6d175ae84ed19dc5116186e65fba879f5b01aafdabb88b17123fb14e934a"

  url "https://github.com/silica-labs/mirrorkit/releases/download/v#{version}/MirrorKit-v#{version}.dmg",verified: "github.com/silica-labs/mirrorkit"
  name "MirrorKit"
  desc "Developer tool mirror switcher"
  homepage "https://mirrorkit.app/"

  depends_on macos: ">= :sequoia"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MirrorKit.app"
end

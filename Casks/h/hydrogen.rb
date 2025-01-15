cask "hydrogen" do
  arch arm: "-AppleSilicon"

  version "1.2.4"
  sha256 arm:   "a3533c9f467c3d74fe2ff6d8d8bb7362ee827dc62704c53a39c844e04bbca528",
         intel: "5030c76305fda1ff7024dfcdcc3333732de0f98c8341a2610a292c988e365db4"

  url "https://github.com/hydrogen-music/hydrogen/releases/download/#{version}/Hydrogen-#{version}#{arch}.dmg",
      verified: "github.com/hydrogen-music/hydrogen/"
  name "Hydrogen"
  desc "Drum machine and sequencer"
  homepage "http://www.hydrogen-music.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :mojave"

  app "Hydrogen.app"

  zap trash: "~/Library/Application Support/Hydrogen"
end

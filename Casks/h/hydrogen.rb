cask "hydrogen" do
  version "1.2.2"
  sha256 "c20c2edf80d4f22bfc068e9d9176bf1e8f0a27d66d86340bc1010cd9cc29995d"

  url "https://github.com/hydrogen-music/hydrogen/releases/download/#{version}/Hydrogen-#{version}.dmg",
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

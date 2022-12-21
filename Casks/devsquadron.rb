cask "devsquadron" do
  arch arm: "arm", intel: "intel"

  version "0.0.0"
  sha256 arm:   "9d8f62b4a0560f088c4169eccd0d3f88cb8f0f5b8aaaba61f721db576d898322",
         intel: "eb60640da7afdc75c722c1e0ac7262147f043ed8cd69388db3cfe52d5d8a3a7e"

  url "https://developersquadron.com/api/downloads/devsquadron/v#{version}/macos-#{arch}.tar.xz"
  name "Devsquadron"
  desc "Enterprise grade project management"
  homepage "https://developersquadron.com/"

  livecheck do
    url "https://developersquadron.com/api/downloads/"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "bin/macos-#{arch}/ds"
end

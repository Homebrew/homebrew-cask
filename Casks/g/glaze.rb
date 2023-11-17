cask "glaze" do
  arch arm: "m1", intel: "Intel"

  version "1.1"
  sha256 arm:   "633eff6264fd39f6f8ea3b16b1a4aaf2f8fe4830126c055bdedf20ed275a8a2c",
         intel: "a33c52f059a5364d68c036da80fe4afeabc5d1a4355f51fa0b29cf6333785669"

  on_intel do
    depends_on macos: ">= :ventura"
  end

  url "https://mirror.cs.uchicago.edu/fawkes/files/glaze/Glaze-#{version}-#{arch}.dmg"
  name "Glaze"
  desc "Art style AI mimicry disruptor"
  homepage "https://glaze.cs.uchicago.edu/index.html"

  livecheck do
    url "https://glaze.cs.uchicago.edu/downloads.html"
    regex(/Glaze[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Glaze.app"

  zap trash: "~/.glaze"
end

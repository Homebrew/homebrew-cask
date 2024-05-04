cask "glaze" do
  arch arm: "arm64", intel: "Intel"

  on_arm do
    version "2.0"
    sha256 "16bb21a2872c30b97ac78b0496dd4b3acefe8481fea571064ec66bc68005212c"
  end
  on_intel do
    version "1.1.1"
    sha256 "1d5d4503b47cfadcbf79062ddd5d5691b8ab03f4e0939835855c66f9c3a3267f"

    depends_on macos: ">= :ventura"
  end

  url "https://mirror.cs.uchicago.edu/fawkes/files/glaze/Glaze-#{version}-#{arch}.dmg"
  name "Glaze"
  desc "Art style AI mimicry disruptor"
  homepage "https://glaze.cs.uchicago.edu/index.html"

  livecheck do
    url "https://glaze.cs.uchicago.edu/downloads.html"
    regex(/href=.*?Glaze[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  app "Glaze.app"

  zap trash: "~/.glaze"
end

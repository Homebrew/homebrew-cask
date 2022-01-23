cask "heaven" do
  version "4.0"
  sha256 "421cd620f86eb00f1d89a63e267115318c344ab51c71a8b0dd037219e4107386"

  url "https://assets.unigine.com/d/Unigine_Heaven-#{version}.dmg"
  name "Heaven Benchmark"
  desc "Performance and stability test for PC hardware"
  homepage "https://benchmark.unigine.com/heaven"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Unigine[._-]Heaven[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Heaven.app"

  zap trash: [
    "~/Library/Application Support/Heaven",
    "~/Library/Saved Application State/com.Unigine.Heaven.savedState",
  ]
end

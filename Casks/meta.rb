cask "meta" do
  version "2.1.3,3440"
  sha256 "055de6bfe373aa63c09576acf35383ca83297e725aae0d04b430ce5d948df052"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version.csv.first}.zip"
  name "Meta"
  desc "Tag editor for digital music"
  homepage "https://www.nightbirdsevolve.com/meta/"

  livecheck do
    url "https://www.nightbirdsevolve.com/meta/updates/"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "Meta.app"
end

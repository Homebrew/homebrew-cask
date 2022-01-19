cask "meta" do
  version "2.1.1,3409"
  sha256 "4a19e71d9b31aa2525d9acfa81cc683b3b8eae83b0e73466c94a53d08ea9e462"

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

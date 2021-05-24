cask "meta" do
  version "2.0.4,3203"
  sha256 "548cdd03de418bb22df7581146b3cf0e2fadc1974336b5f0d0f65bc87c0b9763"

  url "https://www.nightbirdsevolve.com/meta/updates/bin/Meta%20#{version.before_comma}.zip"
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

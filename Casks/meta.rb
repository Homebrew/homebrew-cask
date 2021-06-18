cask "meta" do
  version "2.0.6,3237"
  sha256 "cefb55b7d5e84a3e8b7fbb5d132891326c81bef7abd1833771d29ded9664ca1f"

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

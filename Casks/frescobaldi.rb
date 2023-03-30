cask "frescobaldi" do
  version "3.3.0"
  sha256 "82f4377c3c9e787a079cfe1cf269c7c3ba41bd933fba4fc4a60347aeb1ed32f0"

  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}-x86_64.dmg",
      verified: "github.com/frescobaldi/frescobaldi/"
  name "Frescobaldi"
  desc "LilyPond editor"
  homepage "https://frescobaldi.org/"

  livecheck do
    url "https://github.com/frescobaldi/frescobaldi/releases/"
    regex(/Frescobaldi[._-]v?(\d+(?:\.\d+)+)[._-]x86[._-]64\.dmg/i)
    strategy :page_match
  end

  app "Frescobaldi.app"

  zap trash: "~/Library/Preferences/org.frescobaldi.frescobaldi.plist"
end

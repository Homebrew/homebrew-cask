cask "frescobaldi" do
  version "3.1.3"
  sha256 "a7c53b67015c8515ae31102a53e16a9eca6b0e5c98ced6e859bb834e3e12f29c"

  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}-x86_64.dmg",
      verified: "github.com/frescobaldi/frescobaldi/"
  name "Frescobaldi"
  desc "LilyPond Editor"
  homepage "https://frescobaldi.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Frescobaldi.app"

  zap trash: "~/Library/Preferences/org.frescobaldi.frescobaldi.plist"
end

cask "frescobaldi" do
  version "3.1.2"
  sha256 "d70c9004c6745c46b04bc28cda9bc1e6e664d4208090dd92e29f65cf10135d7f"

  # github.com/frescobaldi/frescobaldi/ was verified as official when first introduced to the cask
  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}-x86_64.dmg"
  appcast "https://github.com/frescobaldi/frescobaldi/releases.atom"
  name "Frescobaldi"
  desc "LilyPond Editor"
  homepage "https://frescobaldi.org/"

  app "Frescobaldi.app"

  zap trash: "~/Library/Preferences/org.frescobaldi.frescobaldi.plist"
end

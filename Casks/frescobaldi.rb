cask "frescobaldi" do
  version "3.1.2,10.11"
  sha256 "ffa585b4e8c6e553ed32a2aae1d9d821f49f444bbb7d57e236ce6ee9f71a8915"

  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version.before_comma}/Frescobaldi-#{version.before_comma}-x86_64-#{version.after_comma}.dmg",
      verified: "github.com/frescobaldi/frescobaldi/"
  appcast "https://github.com/frescobaldi/frescobaldi/releases.atom"
  name "Frescobaldi"
  desc "LilyPond Editor"
  homepage "https://frescobaldi.org/"

  app "Frescobaldi.app"

  zap trash: "~/Library/Preferences/org.frescobaldi.frescobaldi.plist"
end

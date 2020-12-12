cask "koala" do
  version "2.3.0"
  sha256 "6494408132c8818956a0a0423ed284120506bad0d5dc2349e8ffa7e16c9696bc"

  url "https://github.com/oklai/koala/releases/download/v#{version}/Koala.dmg",
      verified: "github.com/oklai/koala/"
  appcast "https://github.com/oklai/koala/releases.atom"
  name "Koala"
  homepage "http://koala-app.com/"

  app "Koala.app"
end

cask "dixa" do
  version "4.0.9"
  sha256 "3391dc12b8d67324f5f5d3b68964d58fb51de53df2cc4b2b3cb98626d959d98b"
  url "https://github.com/dixahq/dixa-desktop-app-release/releases/download/v#{version}/dixa-#{version}.dmg",
      verified: "github.com/dixahq/dixa-desktop-app-release"
  name "Dixa"
  desc "Dixa is a born global customer service tech company on a mission to solve customer chaos, eliminate bad customer service and build strong bonds between companies and their customers - much like the connection between friends."
  homepage "https://dixa.com"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Dixa.app"
end
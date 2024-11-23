# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "ontime" do
  arch arm: "arm64", intel: "x64"
  version "v3.8.0"
  sha256 arm: "02f1023bdea737120f4d4f25ab9c841c0dc9ca176bee472241a83038749c7249"
         intel: "aebf4d20607bba6016b876fc9bd2e39575fa3db7e98ab99b6b0d7729a943adeb"

  url "https://github.com/cpvalente/ontime/releases/download/#{version}/ontime-macOS-#{arch}.dmg"
      verified: "github.com/cpvalente/ontime/"
  name "ontime"
  desc "Free, open-source time keeping for live events"
  homepage "https://getontime.no/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ""

  app "ontime.app"

  # Documentation: https://docs.brew.sh/Cask-Cookbook#stanza-zap
  zap trash: ""
end

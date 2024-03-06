cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.21"
  sha256 arm:   "f2b757a2a47a7d05b2065698260b48597f5a9583788e7f9f546f0e9abd220e4b",
         intel: "6c7d3deab881898e0f32fd3ec6aa6be04bf19963d15e9911d6c928068d430f8e"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-#{arch}.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[a-z]?)(?:[._-]release)?$/i)
    strategy :github_latest
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end

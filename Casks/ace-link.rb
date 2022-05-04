cask "ace-link" do
  version "2.0.2"
  sha256 "5c8130d7e29480dbd1949bea631ae5c7d5250d0abbdbb96cdf9dcf024e8b9bd6"

  url "https://github.com/blaise-io/acelink/releases/download/#{version}/Ace.Link.#{version}.dmg"
  name "Ace Link"
  desc "Menu bar app that allows playing Ace Stream video streams in the VLC player"
  homepage "https://github.com/blaise-io/acelink"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"
  depends_on cask: [
    "vlc",
    "docker",
  ]

  app "Ace Link.app"

  uninstall quit: "blaise.io.acelink"

  zap trash: "~/Library/Application Support/Ace Link"
end

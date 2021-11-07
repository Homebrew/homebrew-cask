cask "ace-link" do
  version "1.9.0"
  sha256 "522654ea1ed05626f74bfcbe897124943121390334f2ff0167a43512bb1cb5a2"

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

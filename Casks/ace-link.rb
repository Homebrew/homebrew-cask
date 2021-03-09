cask "ace-link" do
  version "1.7.0"
  sha256 "0aa033d5fd483d68914f2ea9c1267b3572741c4f828fa9ee6d0a277c876f366c"

  url "https://github.com/blaise-io/acelink/releases/download/#{version}/Ace.Link.#{version}.dmg"
  appcast "https://github.com/blaise-io/acelink/releases.atom"
  name "Ace Link"
  desc "Menu bar app that allows playing Ace Stream video streams in the VLC player"
  homepage "https://github.com/blaise-io/acelink"

  depends_on macos: ">= :high_sierra"
  depends_on cask: [
    "vlc",
    "docker",
  ]

  app "Ace Link.app"

  uninstall quit: "blaise.io.acelink"

  zap trash: "~/Library/Application Support/Ace Link"
end

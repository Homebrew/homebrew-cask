cask "ace-link" do
  version "1.6.0"
  sha256 "f0ca63579ea30ca4bb9206f51ad9cd9607e9c460730d9a649d1f30555faf9587"

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

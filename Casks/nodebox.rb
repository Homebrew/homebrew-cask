cask "nodebox" do
  version "3.0.51"
  sha256 "2187ebaa849de93f54c5550529678a8a160b06cf6186e8d21a66fc43f395e629"

  url "https://github.com/nodebox/nodebox/releases/download/v#{version}/NodeBox-#{version}.zip",
      verified: "github.com/nodebox/nodebox/"
  appcast "https://www.nodebox.net/node/release-notes.html"
  name "NodeBox"
  desc "Node-based data application for visualization and generative design"
  homepage "https://www.nodebox.net/node/"

  app "NodeBox.app"
end

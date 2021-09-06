cask "nodebox" do
  version "3.0.52"
  sha256 "64409451f786bb8bc08df0ac3b4e3e41f4340512960f682b2230a0bb8182fff3"

  url "https://github.com/nodebox/nodebox/releases/download/v#{version}/NodeBox-#{version}.dmg",
      verified: "github.com/nodebox/nodebox/"
  name "NodeBox"
  desc "Node-based data application for visualization and generative design"
  homepage "https://www.nodebox.net/node/"

  depends_on macos: ">= :catalina"

  app "NodeBox.app"
end

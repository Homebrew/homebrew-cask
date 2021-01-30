cask "nodal" do
  version "2.0.3.1"
  sha256 :no_check

  url "https://nodalmusic.com/downloads/Nodal-#{version}.dmg"

  name "Nodal"
  desc "Make generative music"
  homepage "https://nodalmusic.com/"

  app "Nodal.app"
end

cask "staruml" do
  version "4.0.1"
  sha256 "a493e4af8c1d8abfdc15d27aa0ee4daeeb4aad9305ef84527169e80179eadc4c"

  url "https://staruml.io/download/releases-v#{version.major}/StarUML-#{version}.dmg"
  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/"
    strategy :page_match
    regex(%r{href=.*?/StarUML-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "StarUML.app"
end

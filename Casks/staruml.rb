cask "staruml" do
  version "5.0.1"
  sha256 "31d72acb8d12e255fb67afc536f952bae7b4400702df67b515adf564100ec87d"

  url "https://staruml.io/download/releases-v#{version.major}/StarUML-#{version}.dmg"
  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/"
    regex(%r{href=.*?/StarUML-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "StarUML.app"
end

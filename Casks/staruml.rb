cask "staruml" do
  version "4.1.6"
  sha256 "0e41de6034b5e48156b0871f8ab934d45bcd7de1b98e8f6d1706efa8b9d87844"

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

cask "staruml" do
  arch arm: "-arm64"

  version "5.1.0"
  sha256 arm:   "9dbdb2a205cdb1a11e296e9aec328f925d002a6037a0fae610fc40c72a36d6ff",
         intel: "c21ecc5517ea3ab96c8a5a10158f77904f76cff4054349c2dea94e27fb8fe82a"

  url "https://staruml.io/download/releases-v#{version.major}/StarUML-#{version}#{arch}.dmg"
  name "StarUML"
  desc "Software modeler"
  homepage "https://staruml.io/"

  livecheck do
    url "https://staruml.io/download"
    regex(%r{href=.*?/StarUML[._-]v?(\d+(?:\.\d+)*)#{arch}\.dmg}i)
  end

  app "StarUML.app"
end

cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.0"
  sha256 arm:   "5137ce466dcbfeb06c84d22f69027cab87da0f5250347ece7097398e29670bae",
         intel: "51d3c8b6197bce3c4393263940f6779c3cfb17829d8bf7a3e2d722307315db3c"

  url "https://get.openlp.org/#{version}/OpenLP-#{version}-#{arch}.dmg"
  name "OpenLP"
  desc "Worship presentation software"
  homepage "https://openlp.org/"

  livecheck do
    url "https://get.openlp.org"
    regex(%r{href=['"]?(\d+(?:\.\d+)+)(?!rc\d+)/['"]?}i)
  end

  app "OpenLP.app"
end

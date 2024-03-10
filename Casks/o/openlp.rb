cask "openlp" do
  arch arm: "arm64", intel: "x86_64"

  version "3.1.1"
  sha256 arm:   "e5a30442924fd358d58fc854ac05bbd1e42c2773aad325c9e6b350520f99701d",
         intel: "0893c466780eb28d663717c74b5ad1fde1bd6eeecfc395a34cbfdbb8420dde31"

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

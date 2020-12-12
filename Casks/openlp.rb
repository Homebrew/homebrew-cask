cask "openlp" do
  version "2.9.1"
  sha256 "c01ff0a446716048c9f2e19b13ebf124a2d7fadcd6d73273e8d41cf60326c2c5"

  url "https://get.openlp.org/#{version}/OpenLP-#{version}.dmg"
  appcast "https://get.openlp.org"
  name "OpenLP"
  homepage "https://openlp.org/"

  app "OpenLP.app"
end

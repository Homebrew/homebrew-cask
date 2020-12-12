cask "corelocationcli" do
  version "3.2.0"
  sha256 "c82e5440172755a4c8e87abef72b87b9f4c422f9ac6beaed84777e9f1bd2b672"

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  appcast "https://github.com/fulldecent/corelocationcli/releases.atom"
  name "Core Location CLI"
  homepage "https://github.com/fulldecent/corelocationcli"

  binary "CoreLocationCLI"
end

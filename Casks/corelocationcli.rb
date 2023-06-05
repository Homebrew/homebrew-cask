cask "corelocationcli" do
  version "4.0.2"
  sha256 "ca70f0492d78c317182a095a25153dc1a5cd4d22fea1b71f6e9dd46c6e3dcab1"

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  name "Core Location CLI"
  desc "Prints location information from CoreLocation"
  homepage "https://github.com/fulldecent/corelocationcli"

  binary "CoreLocationCLI"
end

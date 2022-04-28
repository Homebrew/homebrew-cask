cask "corelocationcli" do
  version "4.0.0"
  sha256 "73772a3bfad8b530925f1db19be3c80af504521f5cf903990e7534ae5fabc484"

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  name "Core Location CLI"
  homepage "https://github.com/fulldecent/corelocationcli"

  binary "CoreLocationCLI"
end

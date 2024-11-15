cask "corelocationcli" do
  version "4.0.3"
  sha256 "39e6159b2c4ccb64e7aebb59bec8ef067fdcf57314eb2809fbddf80edf06df17"

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  name "Core Location CLI"
  desc "Prints location information from CoreLocation"
  homepage "https://github.com/fulldecent/corelocationcli"

  binary "CoreLocationCLI"

  # no zap stanza required
end

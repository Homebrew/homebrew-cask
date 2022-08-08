cask "corelocationcli" do
  version "4.0.1"
  sha256 "356210adf039316e7a464231efa0f3eade5bf6db96f3e6579cc81de5c44dcc9b"

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  name "Core Location CLI"
  homepage "https://github.com/fulldecent/corelocationcli"

  binary "CoreLocationCLI"
end

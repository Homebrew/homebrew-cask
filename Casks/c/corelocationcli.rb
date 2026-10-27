cask "corelocationcli" do
  version "4.0.9"
  sha256 "c44734b82138fb1a15d54839b7a8d0c10136317977b715987404e5d7e620b3f7"

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  name "Core Location CLI"
  desc "Prints location information from CoreLocation"
  homepage "https://github.com/fulldecent/corelocationcli"

  depends_on :macos

  app "CoreLocationCLI.app"
  binary "#{appdir}/CoreLocationCLI.app/Contents/MacOS/CoreLocationCLI"

  zap :not_required
end

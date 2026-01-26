cask "corelocationcli" do
  version "4.0.6"
  sha256 "46d66754c995df4903061031f6fee410e0ccd35fa36d1b0cf14e1696c243a6b0"

  url "https://github.com/fulldecent/corelocationcli/releases/download/#{version}/CoreLocationCLI.zip"
  name "Core Location CLI"
  desc "Prints location information from CoreLocation"
  homepage "https://github.com/fulldecent/corelocationcli"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "CoreLocationCLI.app"
  binary "#{appdir}/CoreLocationCLI.app/Contents/MacOS/CoreLocationCLI"

  # no zap stanza required
end

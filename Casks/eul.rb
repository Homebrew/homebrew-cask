cask "eul" do
  version "1.2.3"
  sha256 "de058a3cbebe42756d9f8a03e54c9dac13f6c4a5ebfd0f41b668e0c34b0034a0"

  url "https://github.com/gao-sun/eul/releases/download/v#{version}/eul.app.zip"
  appcast "https://github.com/gao-sun/eul/releases.atom"
  name "eul"
  desc "Status monitoring app written in SwiftUI"
  homepage "https://github.com/gao-sun/eul"

  app "eul.app"
end

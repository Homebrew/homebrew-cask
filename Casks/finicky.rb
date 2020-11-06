cask "finicky" do
  version "3.1.1"
  sha256 "c70262918d3f358c9d7146e6a9fd729508a991202d90e400edff5fb740dcfc61"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.zip"
  appcast "https://github.com/johnste/finicky/releases.atom"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  depends_on macos: ">= :sierra"

  app "Finicky.app"
end

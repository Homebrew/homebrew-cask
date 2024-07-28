cask "objektiv" do
  version "0.6.3"
  sha256 "93f4f31712144c3225a45e69dc251a5db727b299dc7511f4f38004936c396d7a"

  url "https://github.com/nthloop/Objektiv/releases/download/v#{version}/Objektiv.zip"
  name "Objektiv"
  homepage "https://github.com/nthloop/Objektiv"

  app "Objektiv.app"

  caveats do
    requires_rosetta
  end
end

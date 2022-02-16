cask "pyzo" do
  version "4.11.7"
  sha256 "33e0b19288647d945d8c37b0cdbfb9773f82c2147ac7cd5347c492645079bd2d"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end

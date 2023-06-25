cask "pyzo" do
  version "4.13.1"
  sha256 "ddcd63ce369310bbc11541f326e306659696fb4bc87640f099b2048d0e24438d"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end

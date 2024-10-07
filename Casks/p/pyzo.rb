cask "pyzo" do
  version "4.17.0"
  sha256 "460f727426ad4f78af00825b974870a147ceb66b7643eff6b1a3df0cbfb2aedb"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"

  caveats do
    requires_rosetta
  end
end

cask "gmvault" do
  version "1.9.1"
  sha256 "c13f9b2a156fc3d663db9fd4c3246bd341b78d790f7ae938be7c5361237ea52e"

  url "https://bitbucket.org/gaubert/gmvault-official-download/downloads/gmvault-v#{version}-macosx-intel.tar.gz",
      verified: "bitbucket.org/gaubert/gmvault-official-download/"
  name "Gmvault"
  homepage "http://gmvault.org/"

  binary "gmvault-v#{version}/gmvault"

  caveats do
    requires_rosetta
  end
end

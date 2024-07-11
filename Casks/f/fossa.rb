cask "fossa" do
  version "3.9.25"
  sha256 "2999cfa0cdb1a9fbce33daaf4e606cb450991a5f0e4ed9ec39dbaf4a4c6aafb5"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_amd64.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "fossa"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "fossa"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end

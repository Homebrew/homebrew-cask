cask "fossa" do
  version "3.9.8"
  sha256 "20af673a20c44088e6e4f71c4ff08c535956d8b4f1f410868733deb5c9b64fd6"

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

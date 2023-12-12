cask "fossa" do
  version "3.8.26"
  sha256 "ecdafff35a53992d001c04bc4d0e4f9cc2f7a50a2a5849c119e597d52526c7f6"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_amd64.zip",
      verified: "github.com/fossas/fossa-cli/"
  name "fossa"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  binary "fossa"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end

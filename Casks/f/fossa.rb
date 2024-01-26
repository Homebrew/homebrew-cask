cask "fossa" do
  version "3.8.34"
  sha256 "d5fe26d94a534a94031975f1e097c439b1b676055e795616a6f45cd5c752dd67"

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

cask "fossa" do
  version "3.8.19"
  sha256 "e01a968a1fdbb899d8a8b840cff4d9b681da6fde27fedbb57aa7bcf9c70674b8"

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

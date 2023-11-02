cask "fossa" do
  version "3.8.20"
  sha256 "86ea8b978f66fa6fe9397791291375f6e2287f82fc047011de363c443c24dafe"

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

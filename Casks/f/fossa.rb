cask "fossa" do
  version "3.8.28"
  sha256 "a4c2d5a9d0e79902a95833879c797a7b4e4da30b0c9091f1877f2ca1731642a8"

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

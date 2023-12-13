cask "fossa" do
  version "3.8.27"
  sha256 "ca0094475ebbc0ed0e9c0bec913ac8e613d8c0121b681ba48badf924a67c22f9"

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

cask "fossa" do
  version "3.8.21"
  sha256 "1fb3962a796329921b4a039e98f7ec823162a48f2f89ddc07755aec8554e82cb"

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

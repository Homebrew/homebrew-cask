cask "inso" do
  version "2023.5.5"
  sha256 "b634e09fcbaffec4dbe853d83a69fd3f113ca36b09ef6bfd05bf05c897e55b3b"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    regex(/lib@v?(\d+(?:\.\d+)+)(?!.)/i)
  end

  conflicts_with cask: "homebrew/cask-versions/inso-beta"

  binary "inso"

  # No zap stanza required
end

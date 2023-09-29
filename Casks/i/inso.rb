cask "inso" do
  version "2023.5.8"
  sha256 "2ab577f3b3e0e0afc7080b24908c248a31863a7ae1d6d81595e5d16d0238ec58"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    regex(/lib@v?(\d{1,3}(?:\.\d+)+)(?!.)/i)
  end

  conflicts_with cask: "homebrew/cask-versions/inso-beta"

  binary "inso"

  # No zap stanza required
end

cask "inso" do
  version "2023.5.7"
  sha256 "af0a9adc84e0c2a42b0f9fcc47ef87613138e959e5f4b04cd202fb2b4dfbd03a"

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

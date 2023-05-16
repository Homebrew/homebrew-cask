cask "inso" do
  version "3.15.0"
  sha256 "831706314f84024d0878f9eb5484e7a50fa5e8b8aec264641725d8e3c83611f7"

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

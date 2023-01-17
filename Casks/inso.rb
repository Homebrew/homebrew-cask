cask "inso" do
  version "3.10.0"
  sha256 "9088e0720208c1b8ee2bf3672d60fa342c2e7570732e129e72d08d986caaa9d2"

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
end

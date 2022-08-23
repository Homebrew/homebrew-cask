cask "inso" do
  version "3.5.0"
  sha256 "1b3b2ec08eaa570ed418d97b708d3d704828eead474cd669efa222335956f767"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases?q=prerelease%3Afalse+Inso+CLI"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+)+)\.zip/i)
  end

  conflicts_with cask: "homebrew/cask-versions/inso-beta"

  binary "inso"
end

cask "inso" do
  version "2.7.0"
  sha256 "c538514609330049ced8b80d31b0b12b1b1654fc67ebded0627574b3e359442e"

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

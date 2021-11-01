cask "inso" do
  version "2.4.0"
  sha256 "7bf1437f75f829585a0d71b8dbc106b4af624ef5a2641dc7e5a081ac25ed84b2"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+).*?)\.zip/i)
  end

  conflicts_with cask: "homebrew/cask-versions/inso-alpha"

  binary "inso"
end

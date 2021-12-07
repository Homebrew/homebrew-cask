cask "inso" do
  version "2.4.1-beta.1"
  sha256 "c55f596ca19d65de88cbbf239dae033bce9d83b933ff04e7fffe25f97ce3a555"

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

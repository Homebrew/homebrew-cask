cask "inso" do
  version "2.4.1"
  sha256 "ef9510f32d5d5093f6589fe22d6629c2aa780315966381fc94f83519f2553c2d"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+)+)\.zip/i)
  end

  conflicts_with cask: "homebrew/cask-versions/inso-beta"

  binary "inso"
end

cask "inso" do
  version "3.1.0"
  sha256 "c748238f34bba0cea755e4a4fad164efd816013e401aaaac715c2c8c209b3257"

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

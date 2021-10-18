cask "inso" do
  version "2.3.3-alpha.4"
  sha256 "620f39604216f2519ed16d48e411823ff1f19589156c7c2a1e1adc3198f517ce"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-#{version}.zip",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url :url
    strategy :github_latest
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+).*?)\.zip/i)
  end

  auto_updates true

  binary "inso"
end

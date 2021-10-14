cask "inso" do
  version "2.3.3-alpha.2"
  sha256 "d2ee9b7e50f5e9c7ce75fd68405525f0155bc26efcd7aba2a43d9480b6134e56"

  url "https://github.com/Kong/insomnia/releases/download/lib%40#{version}/inso-macos-latest-#{version}.pkg",
      verified: "github.com/Kong/insomnia/"
  name "inso"
  desc "CLI HTTP and GraphQL Client"
  homepage "https://insomnia.rest/products/inso"

  livecheck do
    url "https://github.com/Kong/insomnia/releases"
    strategy :page_match
    regex(/href=.*?inso-macos-(?:latest-)*(\d+(?:\.\d+).*?)\.pkg/i)
  end

  auto_updates true

  pkg "inso-macos-latest-#{version}.pkg"

  uninstall pkgutil: [
    "com.insomnia.inso",
  ]
end

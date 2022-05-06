cask "mbt" do
  version "1.2.10"

  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  if Hardware::CPU.intel?
    sha256 "97566f30e9c19f4a5f8ed0bc2151237c81679a427fb45b12a34c2939f73a472c"
  else
    sha256 "5eae0a697a538a8c3cae84e249a3cc74854ca9397f442bbc7408792c7ec8f193"
  end

  url "https://github.com/SAP/cloud-mta-build-tool/releases/download/v#{version}/cloud-mta-build-tool_#{version}_Darwin_#{arch}.tar.gz",
      verified: "github.com/SAP/cloud-mta-build-tool/"
  name "cloud-mta-build-tool"
  desc "Multi-Target Application (MTA) build tool for Cloud Applications"
  homepage "https://sap.github.io/cloud-mta-build-tool"

  binary "mbt"
end

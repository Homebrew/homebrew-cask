cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.0.0"
  sha256 arm:   "50eaa52820432abd95d12e0ea21ff4dd7a51e0a4624e2a7c1ff1eb666cd68eee",
         intel: "3d8aaef90646edaac20595400d2b35ccbb6f86e0df318c780753fdc3b33bda31"

  url "https://cli-builds-public.s3.eu-west-1.amazonaws.com/official/#{version}/orka3/macos/#{arch}/orka3.pkg",
      verified: "cli-builds-public.s3.eu-west-1.amazonaws.com/official/"
  name "Orka3 CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

  livecheck do
    url "https://cli-builds-public.s3.eu-west-1.amazonaws.com/official/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  pkg "orka3.pkg"

  uninstall pkgutil: "com.macstadium.orka3.pkg"

  # No zap stanza required
end

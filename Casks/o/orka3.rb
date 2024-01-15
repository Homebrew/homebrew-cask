cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.0.1"
  sha256 arm:   "91e00f2e2a8f4ce0a80ea8983b3a3ed2770ff04d2dfe11f0a4b90c6e0978b0e0",
         intel: "396e9c665dfda77d8d9252b31c9ef927d7d36bf364e4f696323ece53862cec10"

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

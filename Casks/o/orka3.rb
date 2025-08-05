cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.4.0"
  sha256 arm:   "7abdfa0606c613534c3ab92778551979dd38e91f9c31ec3fc9b077a09dc15af8",
         intel: "db61a800a633d7280fbf2d1b6708528a723845e0a27b9e956825c115c4edea72"

  url "https://cli-builds-public.s3.amazonaws.com/official/#{version}/orka3/macos/#{arch}/orka3.pkg",
      verified: "cli-builds-public.s3.amazonaws.com/official/"
  name "Orka3 CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

  livecheck do
    url "https://cli-builds-public.s3.amazonaws.com/official/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  pkg "orka3.pkg"

  uninstall pkgutil: "com.macstadium.orka3.pkg"

  # No zap stanza required
end

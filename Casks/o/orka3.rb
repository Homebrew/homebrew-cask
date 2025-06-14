cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.3.0"
  sha256 arm:   "ee4eb5c5a13e27abca91f37d67407dfea77aa3ab75e137cf3efab7ddec8c9ff5",
         intel: "baf6c048e964b7bebc1d282ce1e6d6778b5f5fd87d385e4e747496e65292c891"

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

  no_autobump! because: :requires_manual_review

  pkg "orka3.pkg"

  uninstall pkgutil: "com.macstadium.orka3.pkg"

  # No zap stanza required
end

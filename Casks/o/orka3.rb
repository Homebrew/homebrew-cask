cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.1.0"
  sha256 arm:   "5b489bcbfe108a9720dc5eb68cbd8b47e239575515286b64c1f80b6529b3eb96",
         intel: "2507649ad61b33b03a805bf11018b97a484aac18db4c614586ba18727b739c80"

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

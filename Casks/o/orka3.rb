cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.0.2"
  sha256 arm:   "e0df788e6c83f7c854fa3a54b02377256c47aac11c7ae58324c46d39e3d791a4",
         intel: "f69f8bb3c8b416ae4ba99c9cc6d4158add02027a137abb83e14f58647cab03cc"

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

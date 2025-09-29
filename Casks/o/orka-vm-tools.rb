cask "orka-vm-tools" do
  version "3.5.0"
  sha256 "bd5086e233c34977a2b0085fc47086be74636768cc8097ec7951a938ed1a3987"

  url "https://orka-tools.s3.amazonaws.com/orka-vm-tools/official/#{version}/orka-vm-tools.pkg",
      verified: "orka-tools.s3.amazonaws.com/orka-vm-tools/official/"
  name "Orka VM TOOLS"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://support.macstadium.com/hc/en-us"

  livecheck do
    url "https://orka-tools.s3.us-east-1.amazonaws.com/orka-vm-tools/official/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  pkg "orka-vm-tools.pkg"

  uninstall pkgutil: "com.macstadium.orka-vm-tools.pkg"

  # No zap stanza required
end

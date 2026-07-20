cask "orka-vm-tools" do
  version "3.6.0"
  sha256 "54be7207b27790de8ba32a7e082b904e07672ac2c2c732472c100937407fd80f"

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

  depends_on :macos

  pkg "orka-vm-tools.pkg"

  uninstall pkgutil: "com.macstadium.orka-vm-tools.pkg"

  # No zap stanza required
end

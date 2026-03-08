cask "orka-vm-tools" do
  version "3.5.2"
  sha256 "813dfb310bd2edd845aaf2e25dbb305e7c92e14633be66fe1c22c0c55ff3d37c"

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

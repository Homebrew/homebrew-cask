cask "orka-vm-tools" do
  version "2.4.3"
  sha256 "2b1002d644565c92bc0dfda771efc6f87556d62732494fca933da9445eea7ac1"

  url "https://orka-tools.s3.amazonaws.com/orka-vm-tools/official/#{version}/orka-vm-tools.pkg",
      verified: "orka-tools.s3.amazonaws.com/orka-vm-tools/official/"
  name "Orka VM TOOLS"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

  livecheck do
    url "https://orkadocs.macstadium.com/docs/downloads"
    regex(%r{href=.*?/official/(\d+(?:\.\d+)+)/orka-vm-tools\.pkg}i)
  end

  pkg "orka-vm-tools.pkg"

  uninstall pkgutil: "com.macstadium.orka-vm-tools.pkg"

  # No zap stanza required
end

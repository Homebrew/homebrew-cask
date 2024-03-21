cask "orka-vm-tools" do
  version "3.0.2"
  sha256 "10ec4bc68823c0dd0084cd2f88094f407768b5c8f3f6f1facfe7550925f94b8e"

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

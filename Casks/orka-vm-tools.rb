cask "orka-vm-tools" do
  version "2.4.0"
  sha256 "8bd9d016e2a54f25ad952291833bd88394561a1ab84979799933390f0b208eac"

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
end

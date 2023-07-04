cask "orka-vm-tools" do
  version "2.4.2"
  sha256 "88f7a070f88fd83e0a752650ae301784c94efed2e91176e7c0841324d6ba13f5"

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

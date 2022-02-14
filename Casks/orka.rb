cask "orka" do
  version "2.0.0"
  sha256 "c5a4630068b9a29b1ae471c28b5adcfaa0b01cb0c421a2eab035b28e0e06c936"

  url "https://cli-builds-public.s3-eu-west-1.amazonaws.com/official/#{version}/macos/orka.pkg",
      verified: "cli-builds-public.s3-eu-west-1.amazonaws.com/official/"
  name "Orka CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

  livecheck do
    url "https://orkadocs.macstadium.com/docs/downloads"
    regex(%r{href=.*?/official/(\d+(?:\.\d+)+)/macos/orka\.pkg}i)
  end

  pkg "orka.pkg"

  uninstall pkgutil: "com.macstadium.orka.pkg"
end

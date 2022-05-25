cask "orka" do
  version "2.0.4"
  sha256 "e62ac22d55aca375073266c7a4bc830b1420b615d7ef53b172ec83d0e22067f0"

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

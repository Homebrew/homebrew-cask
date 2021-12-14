cask "orka" do
  version "1.7.0"
  sha256 "0e07e9726a07d72ccd11230a9b29d3440e8f11ee3703d9be6ec3b5c7015378b4"

  url "https://cli-builds-public.s3-eu-west-1.amazonaws.com/official/#{version}/macos/orka.pkg",
      verified: "cli-builds-public.s3-eu-west-1.amazonaws.com/official/"
  name "Orka CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

  livecheck do
    url "https://orkadocs.macstadium.com/docs/downloads"
    strategy :page_match
    regex(%r{href=.*?/official/(\d+(?:\.\d+)*)/macos/orka\.pkg}i)
  end

  pkg "orka.pkg"

  uninstall pkgutil: "com.macstadium.orka.pkg"
end

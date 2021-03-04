cask "orka" do
  version "1.5.0"
  sha256 "d58cb0c77cec049d94efe1e20f0008f4d44d904209b11d241ba1ec166e315fea"

  url "https://cli-builds-public.s3-eu-west-1.amazonaws.com/official/#{version}/macos/orka.pkg",
      verified: "cli-builds-public.s3-eu-west-1.amazonaws.com/official/"
  appcast "https://orkadocs.macstadium.com/docs/downloads"
  name "Orka CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

  pkg "orka.pkg"

  uninstall pkgutil: "com.macstadium.orka.pkg"
end

cask "orka" do
  version "1.5.4"
  sha256 "c3e77cc0406a15e4506c1be4b1b758486ec766f9c1c5065c3446a7a3541f8f19"

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

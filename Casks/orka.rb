cask "orka" do
  version "1.5.3"
  sha256 "f370d6bf6f02aed5e59bc60b532419982bf62b26c70e4493f3f65ce794d51dfa"

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

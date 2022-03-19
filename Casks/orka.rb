cask "orka" do
  version "2.0.2"
  sha256 "d0f48be360005576aa5852e8373469b83bc890f3b6d86ceb2febdccb4a3df2db"

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

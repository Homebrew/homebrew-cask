cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.6.2"
  sha256 arm:   "58a10a0ee466edfa4fe9a1428b499a11fb8a6a1d0f5f4d1d4def759defcc40e2",
         intel: "a60132b907d69c48878c0aa3211b1de054b013ac48a03952da410c529ac47cae"

  url "https://cli-builds-public.s3.amazonaws.com/official/#{version}/orka3/macos/#{arch}/orka3.pkg",
      verified: "cli-builds-public.s3.amazonaws.com/official/"
  name "Orka3 CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://support.macstadium.com/hc/en-us/articles/42514244203419-Orka3-CLI-Overview-Configuration"

  livecheck do
    url "https://cli-builds-public.s3.amazonaws.com/official/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  pkg "orka3.pkg"

  uninstall pkgutil: "com.macstadium.orka3.pkg"

  # No zap stanza required
end

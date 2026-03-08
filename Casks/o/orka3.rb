cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.5.2"
  sha256 arm:   "4f0929b77ad4b517d67800b4a3fba3e944534fb7fd8b7c1601615bc09d1d682c",
         intel: "6cd2e936fb549d4c833b2b6a616ca6e93527e33d9ea375a05481ea9046af2c73"

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

  pkg "orka3.pkg"

  uninstall pkgutil: "com.macstadium.orka3.pkg"

  # No zap stanza required
end

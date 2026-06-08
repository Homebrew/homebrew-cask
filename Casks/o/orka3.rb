cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.6.1"
  sha256 arm:   "0a0d7152ac0462839aa0c80d1c6f4c022fc1e8305da4bbb36347e3b16a51cdd2",
         intel: "2bf535724b28d03c1b8b8be78652fbd52f55a36b3730c75f40447d10e2ab4af4"

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

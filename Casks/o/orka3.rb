cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.6.3"
  sha256 arm:   "e990bfccb6290a808b3060d87315f0e4752fca1a12c44e1c7a1e785a7a4d48e9",
         intel: "69fb9e7fabf922e6ccd1076386c4d5ccaf89602d67ea16cdb403a1433ebbe9ab"

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

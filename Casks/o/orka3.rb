cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.6.0"
  sha256 arm:   "608bc8fec9301eb626745713290bed043c4abc6e3a9cdb9fe088dd2b4cba0770",
         intel: "63c4b4ed6601b122c0db3db379da35f85b729fa14cd1a9b03282f1af0f53dbfe"

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

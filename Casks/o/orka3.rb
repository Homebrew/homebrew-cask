cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.7.0-alpha"
  sha256 arm:   "81a08a4efe1b4b89428cb1aa92ff7d5a1f6a9879b7f9a964bc8e746fec45619a",
         intel: "e6d3a595fe483debc33c240556c853f6765a82c7b715bde3615d81fdecd10127"

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
  generate_completions_from_executable "/usr/local/bin/orka3", "completion"

  uninstall pkgutil: "com.macstadium.orka3.pkg"

  # No zap stanza required
end

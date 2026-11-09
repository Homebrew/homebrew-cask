cask "orka" do
  arch arm: "arm64", intel: "amd64"

  version "4.0.0"
  sha256 arm:   "34dcf21b9e98a5d4b15462ead3a69b7f6ccffd3a9b4a64af854129b459c05262",
         intel: "39555d66f63f668455edc383bbe279efd7ba91273a0cc0cc34558c6beec759c5"

  url "https://cli-builds-public.s3.amazonaws.com/official/#{version}/orka/macos/#{arch}/orka.pkg"
  name "Orka CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://docs.macstadium.com/orka/orka-overview/orka-overview"

  livecheck do
    url "https://cli-builds-public.s3.amazonaws.com/official/orka/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  pkg "orka.pkg"
  generate_completions_from_executable "/usr/local/bin/orka", "completion"

  uninstall pkgutil: "com.macstadium.orka.cli.pkg"

  zap :not_required
end

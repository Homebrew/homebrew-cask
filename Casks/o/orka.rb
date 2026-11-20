cask "orka" do
  arch arm: "arm64", intel: "amd64"

  version "4.0.1"
  sha256 arm:   "1bc042d4cc2378467e02cda275b53bf9f2fe96f6a358d203d751251f66c44409",
         intel: "78b051b24b9dfc98c79b914eeb8e601810519a480fccff8205b2f9af6e4e8f16"

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

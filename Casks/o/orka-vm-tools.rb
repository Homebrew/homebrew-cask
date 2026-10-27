cask "orka-vm-tools" do
  version "4.0.0"
  sha256 "9d566be39bce555f9af5f86306bd7caa698cc447418ed7722793ab7fa9a39dcc"

  url "https://orka-tools.s3.amazonaws.com/orka-vm-tools/official/#{version}/orka-vm-tools.pkg"
  name "Orka VM TOOLS"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://support.macstadium.com/hc/en-us"

  livecheck do
    url "https://orka-tools.s3.us-east-1.amazonaws.com/orka-vm-tools/official/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  pkg "orka-vm-tools.pkg"

  uninstall pkgutil: "com.macstadium.orka-vm-tools.pkg"

  zap :not_required
end

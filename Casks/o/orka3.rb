cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.2.0"
  sha256 arm:   "6da6577be695e1214fbe469d8189d8459210c1d6292ebdcdca8e38bd68858d45",
         intel: "e7df8d497fe6bd77f17ebbe16f0ab01fc674dc6335a1ec9b4aab723306ef2f11"

  url "https://cli-builds-public.s3.amazonaws.com/official/#{version}/orka3/macos/#{arch}/orka3.pkg",
      verified: "cli-builds-public.s3.amazonaws.com/official/"
  name "Orka3 CLI"
  desc "Orchestration with Kubernetes on Apple"
  homepage "https://orkadocs.macstadium.com/docs"

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

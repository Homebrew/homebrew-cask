cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.5.0"
  sha256 arm:   "d9fcf15593d0f7affdb939db8b11976ae39dc720a4d0737c6f7abf89ec4b2cd3",
         intel: "6940eb42ec9d1a4113d1c6fe3d4e63d68ad647a712b7e4dedd6c1e22cfe03a9a"

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

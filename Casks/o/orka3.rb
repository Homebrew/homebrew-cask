cask "orka3" do
  arch arm: "arm64", intel: "amd64"

  version "3.5.1"
  sha256 arm:   "42dc7d9fc1512ee880a83046c3ea1ccb79d020e7b80d3ef24a407a1f81d8ca6d",
         intel: "5000f69d943b0220d1997a9cc2abbd65e98a1090781c43cb50f8ea3fe2d9fbc5"

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

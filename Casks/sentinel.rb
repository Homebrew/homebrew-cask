cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.20.0"
  sha256 arm:   "c9f9a6d679977520eca2fa49e507d91991f7e8c837a4ee34331a707e3726b1ad",
         intel: "037f778b3533d9c7405ac92388bbe1a44fab3ca9236b995a473bc75529ad35a0"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_#{arch}.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://docs.hashicorp.com/sentinel/downloads"
    regex(%r{href=.*?/sentinel[._-]?v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
  end

  binary "sentinel"

  # No zap stanza required
end

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.0"
  sha256 arm:   "452f574a2c90f5654c2aa4e5235103c9e8730ef1e5085b73d2dd84a467f4784d",
         intel: "86ac1c9a7e82f85f1564f2be145955a93bee94e84a959df706652a7e00e7b01c"

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

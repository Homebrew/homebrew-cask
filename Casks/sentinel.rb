cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.22.1"
  sha256 arm:   "81345bd34e86d59a56a40e57581cdd2c4116205e61e3bfb96e00b5302ef0da85",
         intel: "09b9908e0b8a3cefce7758aae95a1004374bfc0dfb5d13993b7ce3bbc3ed8b48"

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

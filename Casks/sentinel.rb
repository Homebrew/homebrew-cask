cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.22.0"
  sha256 arm:   "8b7ced20df3437e8115aea5cf960ed8e61484d79927310d11277091d5db48155",
         intel: "223d338b156ee794d50071690643ac79b7950578d3a70544d02ae0d312109ce2"

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

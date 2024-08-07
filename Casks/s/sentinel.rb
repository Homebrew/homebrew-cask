cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.27.0"
  sha256 arm:   "05c2d372665517981816abab9a8eb81b6cce3f1e8e3cdae8da5fc8864c81bed1",
         intel: "4320500f1e97ce5f0a73b1541b173c4bf9046de068d7ef2321e3b2e9b7d3babd"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_#{arch}.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://developer.hashicorp.com/sentinel/install"
    regex(%r{href=.*?/sentinel[._-]?v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
  end

  binary "sentinel"

  # No zap stanza required
end

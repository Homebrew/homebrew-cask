cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.25.1"
  sha256 arm:   "0d959cc359e9cbfd2e6fb50f43f7a4e7edcf1df4d066cee83711550bf22ce585",
         intel: "174760d764366a2d7f96b6e7e1dc2733d3f6739c58580691736c326db53c87d5"

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

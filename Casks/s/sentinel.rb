cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.29.0"
  sha256 arm:   "c02100f64904864b834d5dd609644c3b0373d2934922c71186f4a64863e26d94",
         intel: "a23f411dbb8bebea072d59ca934d093045c19e30ee61435be953d9f8237072ad"

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

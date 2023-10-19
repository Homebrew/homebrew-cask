cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.23.1"
  sha256 arm:   "44ad8edc19ff7fb4f09b073e8cb1790cf2ac0a76e21c33c88edc48f15da21ca6",
         intel: "3b02b0ac37bdb0f135e08454f42a796f36b5ead9044abffd305c497c8ea4b396"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.0"
  sha256 arm:   "5f994300e835cfc7901ada9e1ed007c39ea3287e6167568a1211ff628e9bd869",
         intel: "79212c32a7e16e8e815898bb5b3db7bc2251b275472f961ac2e0ec24aa0c8aa0"

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

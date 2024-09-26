cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.28.0"
  sha256 arm:   "11b62577c5e62b902d6265dd4394fa156a7bff4793e2a4ecf5bb5d146a30737e",
         intel: "8701f04a26cff5b0a9e2ccc71230a548c1f698debb2f26a5eb30810201ef71e7"

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

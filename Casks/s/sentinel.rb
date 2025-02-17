cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.30.0"
  sha256 arm:   "a1f57cbb26b9c42e5f42676d50fa5338a701d3e5f5653395cfb16195b31b9bcc",
         intel: "8fe9769d8ad29675c161b4c75e51b3030438816d98af554bf08b63c34c130045"

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

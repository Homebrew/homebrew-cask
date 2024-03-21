cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.24.4"
  sha256 arm:   "d5b46b32f03d6d7e95911502233d0e2721e876e4564f5e912c8c1f93eb510083",
         intel: "880c8b7a21aec46715980fe5ee4c47283412696b7e1a6c99fcc91cebb8057e78"

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

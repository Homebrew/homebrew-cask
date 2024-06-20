cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.26.2"
  sha256 arm:   "5492f9b07aec1a46d077da4b3c9240b0d0203e9c3a691aba5525698d57f066fd",
         intel: "ac93f0f656d676ad5315bb10bd322834e4c6e35ec2b181faeb3a69abd3afde97"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.40.0"
  sha256 arm:   "75dd8347e8fc609ff01079386e05676e11023ef82f947c8f8c033fe21bc6c3b2",
         intel: "6961d4db9ac5635a395f68bc0a5debb7bbfa34222eec896bc384fc3af16be3ac"

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

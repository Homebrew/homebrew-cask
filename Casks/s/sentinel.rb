cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.25.0"
  sha256 arm:   "a8d787cd53a32aeb59e70f7a165f239304f1a18b7426fdf34a9fa9cc5f2ed362",
         intel: "e43b3ce562e060565ee92dc8445a932728022a261aebe16d3af2399845048409"

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

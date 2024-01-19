cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.24.1"
  sha256 arm:   "f10bb5f20c2a5ae8083e037b97e4b709c93fa62c46394528dbdc760dbd7eca5a",
         intel: "1fbddd7313eb9c197206b3338512929a9dc2ae9b15f5b5a211b6f38e79c3e480"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.26.3"
  sha256 arm:   "3dd675e4cdcabae6cf1d910ccc627d96516870a0e301d77dae67b2d3be21d8dc",
         intel: "2f9908bcdf99de07c08a59ef05d79c1c5457121b358e106848a560d9d513f89c"

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

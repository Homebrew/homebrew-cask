cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.24.0"
  sha256 arm:   "d79a1823c34e7867b49ccf4a224ec24dff21185466ebb3afa5636c98cc6cffc9",
         intel: "108a9d0cb6531e8beac4a37f98c72a1248d491f0eb5ee09b9a1bf887dd9d871d"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.19.0"
  sha256 arm:   "7a22f0a016522df9e0c84743521a899be05d76bff8f0d522820b5cf1935fe135",
         intel: "cb28d3b2a3a0940088a8fb693399609418a03abb11606cf75f995b50372df8b0"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_#{arch}.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://docs.hashicorp.com/sentinel/downloads"
    regex(%r{href=.*?/sentinel[._-]?v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
  end

  binary "sentinel"
end

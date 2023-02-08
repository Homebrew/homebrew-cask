cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.19.2"
  sha256 arm:   "c5da58ca218d86c530cfecf76691bd428e1f5e85dcaabb8ba7addaeecca338a1",
         intel: "b0c08e11a577314c7760101d84d5d41f7be56c583a19a926006cb0c4f6a200ca"

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

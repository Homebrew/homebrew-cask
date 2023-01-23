cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.19.1"
  sha256 arm:   "c5e93cbc424dcd665d0228f176436f9df4e0306a1ddf7ba082dabde53c394201",
         intel: "ce2bdade51782f415b055162f9fdc08ae697e5a195829ed89e17c5c72068672b"

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

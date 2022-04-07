cask "sentinel" do
  version "0.18.9"
  sha256 "22e896d631283e2dbde09b8b4e19799c4d6ecc8a234e73c96c2aba07f685f95d"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_amd64.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://docs.hashicorp.com/sentinel/downloads"
    regex(%r{href=.*?/sentinel[._-]?v?(\d+(?:\.\d+)+)[._-]darwin[._-]amd64\.zip}i)
  end

  binary "sentinel"
end

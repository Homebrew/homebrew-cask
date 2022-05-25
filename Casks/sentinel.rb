cask "sentinel" do
  version "0.18.10"
  sha256 "c79d982cf24bbce38bcdbf7deb752ff629d76bba33c9f2b04f48be957113885d"

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

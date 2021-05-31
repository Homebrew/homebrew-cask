cask "sentinel" do
  version "0.18.2"
  sha256 "a7cbb9e7b614d3deb737a9381a5241235483a1b25a0c017f9fe1de0753ab606a"

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

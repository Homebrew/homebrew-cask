cask "sentinel" do
  version "0.18.7"
  sha256 "36d7925583a74d576cde13fe180c897c9ec5b2906c26b01aef033bad48a68467"

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

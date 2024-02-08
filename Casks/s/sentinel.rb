cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.24.2"
  sha256 arm:   "8027a8764802612fbb8d1247aa659b1d03a7607568fbd6a659cc23d7507d1bad",
         intel: "ee89ef68c8662badf6c4e781fcf6c08ae47aca53ba8e9a873afdc13bb861b1ba"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.18.13"
  sha256 arm:   "604278234102613c1d9e2fe57235146d6f29b68cfbd6eb099e07f83f941def7e",
         intel: "97583fde45562ab2f6cb31029c86a080a4eefe86d99d8229132536441540df0c"

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

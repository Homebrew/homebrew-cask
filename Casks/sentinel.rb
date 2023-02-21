cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.19.5"
  sha256 arm:   "8758cefe134ec6d82a0144b063f8a59a2cc58a7cb123b74964dab390e12fb84a",
         intel: "82ccc2c165c08ea2d870b2755ece4264ec9a8a0cccbf2a054c8e2d4bb4d0fed4"

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

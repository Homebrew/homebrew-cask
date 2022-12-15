cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.19.1"
  sha256 arm:   "f2fe24cccf1e7c963e00b0355a4b2c6d48498f8c977d50290b83cea7c9a7185e",
         intel: "5cb2d5dadd216c7d418e08e6d9729c1b74a63beb121bdd154d3d2d9f01960e26"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.18.11"
  sha256 arm:   "c6c638426c8ef50b5b8500e082a0e8b116f7311f2ee24d24336f22d64b23c5a0",
         intel: "267f2d2d2bf62476c6b40f112b7c222966da4ee27098cadb99e4446b48e9b68a"

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

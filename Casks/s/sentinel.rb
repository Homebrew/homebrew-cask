cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.26.0"
  sha256 arm:   "85f8a352e4ec1bc1c40b0b7110b022f36939a1e606a57501dbf252ce36f8b4e2",
         intel: "26a991182429cef43cb8439e945dc9f50f84e818bb028977787db4fa9648f244"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.21.1"
  sha256 arm:   "fcbaa4298fc69d28b561993eee70c28b56e9da7821f0d64ff94ce5819cb5b554",
         intel: "63b0d9d23d6ab320dd15e2842f165c5990e318eb19781ad2c46dc0c5fabf011b"

  url "https://releases.hashicorp.com/sentinel/#{version}/sentinel_#{version}_darwin_#{arch}.zip"
  name "Sentinel"
  desc "Language and framework for policy as code"
  homepage "https://docs.hashicorp.com/sentinel"

  livecheck do
    url "https://docs.hashicorp.com/sentinel/downloads"
    regex(%r{href=.*?/sentinel[._-]?v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
  end

  binary "sentinel"

  # No zap stanza required
end

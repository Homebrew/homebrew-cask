cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.26.1"
  sha256 arm:   "6facbfb121b2d7b9ea1438a06ae1f46ce3cbdae364a2784ab68b2d1d3f1329a4",
         intel: "a8dfc234b5d65a3d085ac6b99cd32af943db3969163a711c71e3706944afbb6b"

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

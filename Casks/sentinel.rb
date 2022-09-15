cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.18.12"
  sha256 arm:   "3195ceb02681e3bf481e568c116c50659f087f681a081582fb321f29f5336600",
         intel: "83332a987aa9c9bb8be5e6bc13344eec60b8d4060067b8ad4c67aa65fca92de0"

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

cask "sentinel" do
  arch arm: "arm64", intel: "amd64"

  version "0.24.3"
  sha256 arm:   "5728ea1d737f4bb6c3e54e1591e57a189f3cd2107e3d319cc4924cbeb2568ab8",
         intel: "46879e2948eaaf2095bb1afb5fa9744adb3d7f8b77f5e742dac23159cca3aae8"

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

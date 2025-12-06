cask "font-iosevka-ss09" do
  version "33.3.6"
  sha256 "c07aee8c07ccc1f604d6cbf9ab2e766f4f11bbd7b84b8acabd0fc677d9d7f183"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end

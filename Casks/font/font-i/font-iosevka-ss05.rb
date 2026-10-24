cask "font-iosevka-ss05" do
  version "34.9.1"
  sha256 "e238daada352b09f6d38dd6a42ac1b0322a2656b596b640415913fdd701007fb"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end

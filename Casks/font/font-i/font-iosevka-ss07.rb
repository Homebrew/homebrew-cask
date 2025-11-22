cask "font-iosevka-ss07" do
  version "33.3.5"
  sha256 "783e6094a4cbe80a23422a8a8322c77df02029c34060a823e5b68cb51756cb42"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end

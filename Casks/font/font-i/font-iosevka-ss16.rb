cask "font-iosevka-ss16" do
  version "31.6.1"
  sha256 "f7fd3a095c41cc98fef6c22ef3e8b14d05287ce71260ce4ce1c4028cb094ecae"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end

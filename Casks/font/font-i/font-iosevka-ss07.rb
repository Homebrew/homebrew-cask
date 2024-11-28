cask "font-iosevka-ss07" do
  version "32.2.0"
  sha256 "cff79f1a93745743fa0346e4a52fe3b237318825d233c963a158d7a528bcb9d6"

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

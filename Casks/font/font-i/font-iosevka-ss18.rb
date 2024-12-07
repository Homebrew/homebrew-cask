cask "font-iosevka-ss18" do
  version "32.2.1"
  sha256 "91fb7e144e4270ab3f6eaaf037021f12be7134ce010d1b7835dbe51eef62800c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end

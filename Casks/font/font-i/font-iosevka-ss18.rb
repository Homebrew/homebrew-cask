cask "font-iosevka-ss18" do
  version "33.2.5"
  sha256 "687e37cae4cd6e7322b251317c7e14a30cdd98ccfd8e65448e88b7c99d5a2b8a"

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

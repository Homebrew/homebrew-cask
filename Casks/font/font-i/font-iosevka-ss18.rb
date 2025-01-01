cask "font-iosevka-ss18" do
  version "32.3.1"
  sha256 "d2ba0990167de6721573a32baa77a85d1d0eab654c7bf7e71325a09d04aa97e5"

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

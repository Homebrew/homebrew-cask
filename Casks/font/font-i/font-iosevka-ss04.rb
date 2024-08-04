cask "font-iosevka-ss04" do
  version "31.1.0"
  sha256 "228055f1011b01ac40e372c5786ead8a519e23aecb9d94602a96eb10f204fcf0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end

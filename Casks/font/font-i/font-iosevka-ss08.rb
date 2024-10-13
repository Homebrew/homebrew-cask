cask "font-iosevka-ss08" do
  version "31.9.0"
  sha256 "2a79c250e6edb2ca22f2ff0603dae7ac5adbc16cfda1172f172408ae395e60fd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end

cask "font-iosevka-ss01" do
  version "31.2.0"
  sha256 "928313a0477f25e56d0dd48fbce7b751787cba3216fe3a04bfc56a5505562ebf"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end

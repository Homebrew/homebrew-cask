cask "font-iosevka-ss11" do
  version "31.7.0"
  sha256 "ddb54d6aac28810500794ba65fafd3096d4bab7f9b8aa244308392cbc59bf3e2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end

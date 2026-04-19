cask "font-iosevka-ss11" do
  version "34.4.0"
  sha256 "ddea34c8f0c9d9379afb4ba276620186e7143668f0f8f15c080bdf0aba83a979"

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

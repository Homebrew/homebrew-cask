cask "font-iosevka-ss03" do
  version "31.9.1"
  sha256 "6167c5c2b9fa9a3f0471fb4349b0451fb406e6e34377f88edc83bd21eb0baac6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end

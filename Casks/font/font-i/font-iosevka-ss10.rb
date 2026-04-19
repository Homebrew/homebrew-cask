cask "font-iosevka-ss10" do
  version "34.4.0"
  sha256 "7482e6c3179a4bff1928ca5e4cc77ddd92f29fe256a906b34c84ec3a84729ad0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end

cask "font-iosevka-ss16" do
  version "33.3.5"
  sha256 "39860a205b0c0733157847f3734bfbc313f7857686ee18d6c2df1fc7d2bf9987"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end

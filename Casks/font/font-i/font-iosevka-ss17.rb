cask "font-iosevka-ss17" do
  version "31.7.1"
  sha256 "cf5c9ce00f522c67fb972f3d323504e70e949d7b1cd436444efc14719379ab0f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end

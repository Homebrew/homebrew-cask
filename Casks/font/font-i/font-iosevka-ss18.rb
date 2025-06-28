cask "font-iosevka-ss18" do
  version "33.2.6"
  sha256 "17437f0dcbd3570b97e474bf07464eb7dda5b46054496faa751b0ab6546d4e81"

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

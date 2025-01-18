cask "font-iosevka-ss18" do
  version "32.4.0"
  sha256 "8f60461015f672ced7da75abaed46623f067da91116697eac6d7f10916c3c74a"

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

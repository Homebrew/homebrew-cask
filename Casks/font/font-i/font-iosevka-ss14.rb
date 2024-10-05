cask "font-iosevka-ss14" do
  version "31.8.0"
  sha256 "4f12c44954344602370a63700b954766e588542dedcdd702fc65457701ec22b9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end

cask "font-iosevka-ss05" do
  version "31.6.0"
  sha256 "cceda761f5b6429a6bd4540fc9522efd8988767e720ec22fbd7c7ce7a2604464"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end

cask "font-iosevka-ss12" do
  version "31.4.0"
  sha256 "afb6abbefa34718dc76d853be5bf48cc1889169b762b80d9ea52bb649c8db3c0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end

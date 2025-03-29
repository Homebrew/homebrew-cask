cask "font-iosevka-ss05" do
  version "33.2.0"
  sha256 "e637b058f5b0b4a7b5a473d925404c007ba801929510eb0541ada0694ff82095"

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

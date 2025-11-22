cask "font-iosevka-ss05" do
  version "33.3.5"
  sha256 "74b54d6f69178bdb4b6e39551fd09d9e21ea312f4910297871a39570e87158f0"

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

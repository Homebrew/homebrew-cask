cask "font-iosevka-ss02" do
  version "33.2.1"
  sha256 "948dff2618356ac0d03345579b27af5f33c2818bd7e4ac59982f5fb6e03a2edd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02.ttc"

  # No zap stanza required
end

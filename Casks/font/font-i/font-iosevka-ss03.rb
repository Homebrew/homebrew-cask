cask "font-iosevka-ss03" do
  version "33.2.5"
  sha256 "21312d09b46588ec06b043873924a5ab2e44553cafe4e69220cfbb3831fb40ea"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end

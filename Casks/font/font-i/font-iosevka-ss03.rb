cask "font-iosevka-ss03" do
  version "31.6.1"
  sha256 "5fb86614e4150db297a9f38686ec736ed8794ebee7a2dc925e31c2e7c508a4e7"

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

cask "font-iosevka-ss13" do
  version "33.2.6"
  sha256 "697a255104880045da1dc64995ab4f5414b90bbee30ed3ac81525a06064b7c59"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end

cask "font-iosevka-ss07" do
  version "31.7.0"
  sha256 "3b009e294344ada049e89a5e0be7bdfb67064506c7a3d7014dcb8e79e228c2ec"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end

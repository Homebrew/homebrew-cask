cask "font-iosevka-ss03" do
  version "33.3.0"
  sha256 "9e31fd2b980dbacf4475f99b548a67932f2d5fc15c606fedb3f9eb1c0146c097"

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

cask "font-iosevka-ss08" do
  version "33.2.3"
  sha256 "f7119cd665c2f7d58263f8a719adee28829010facd7ef7c71b6eeff4873b152f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end

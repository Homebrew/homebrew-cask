cask "font-iosevka-ss14" do
  version "33.1.0"
  sha256 "0366cbe35702eb26ea975e1b0a30fd1900ef2f14fea21fcbbd276e7ffeaa2649"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end

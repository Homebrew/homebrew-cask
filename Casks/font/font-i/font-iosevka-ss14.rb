cask "font-iosevka-ss14" do
  version "32.2.0"
  sha256 "715f7c10d1650a853ede45d71116c330f44f4f39d5addeeae82d67e188716465"

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

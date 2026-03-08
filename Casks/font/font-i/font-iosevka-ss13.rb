cask "font-iosevka-ss13" do
  version "34.2.1"
  sha256 "db1df4ff672c6471fe26fc917cbb48e34f82e2ff3401c52444a2aaeaa0cb8142"

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

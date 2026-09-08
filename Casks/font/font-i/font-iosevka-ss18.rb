cask "font-iosevka-ss18" do
  version "34.8.1"
  sha256 "f38f3b69f03b06772b13431fb572513b8b002f701d9aa7445d4454904f9598d7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end

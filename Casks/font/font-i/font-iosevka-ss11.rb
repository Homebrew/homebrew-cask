cask "font-iosevka-ss11" do
  version "33.0.0"
  sha256 "ba304644529a2eb1f56fed337b91ed75cd7f7698a85c32f557e802b7bfdc30ac"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end

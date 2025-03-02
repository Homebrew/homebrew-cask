cask "font-iosevka-ss12" do
  version "33.0.1"
  sha256 "9a7279c067b7765460d9a7d77a1ff3907c3b37e9b98ac2f491ec83cb16527a57"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end

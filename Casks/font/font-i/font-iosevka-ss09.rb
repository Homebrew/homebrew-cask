cask "font-iosevka-ss09" do
  version "31.7.0"
  sha256 "6c375556410d7475d5b3f004e17a739f54b277f58265b101bcc5a6a3facbb92b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end

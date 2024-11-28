cask "font-iosevka-ss08" do
  version "32.2.0"
  sha256 "b63f1e89a85888537825587b8af45b6c8ff3ab31447cdd939286a92137dfe81e"

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

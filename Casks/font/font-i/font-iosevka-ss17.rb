cask "font-iosevka-ss17" do
  version "31.1.0"
  sha256 "cc117197cf99655af5a3657bcc4563690d9b7a1c270cd1a2fcbf0d471bfd9780"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end

cask "font-iosevka-ss16" do
  version "31.1.0"
  sha256 "ce7afe89bab68e848bbb8b137d62179c5df06ac857f9814a7f92fe932d0e146c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end

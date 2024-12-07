cask "font-iosevka-ss05" do
  version "32.2.1"
  sha256 "c6a7079da3960584cf8005a0a595f5aba7f46af83ff82907841f97e92696b1b4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end

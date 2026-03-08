cask "font-iosevka-ss17" do
  version "34.2.1"
  sha256 "b5fc0363f3c141c2f6a6659efa75f77c58d37de8f3a4bd30fa8e06bfad56ea03"

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

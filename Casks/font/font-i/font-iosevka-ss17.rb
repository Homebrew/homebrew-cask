cask "font-iosevka-ss17" do
  version "33.2.7"
  sha256 "721f93e907b9d7fd532c56e441670b8b0919e8cdfb6b6c236d5e0ba22f96d44d"

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

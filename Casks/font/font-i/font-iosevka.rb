cask "font-iosevka" do
  version "32.3.0"
  sha256 "cd9cab9ad6a68333052998fcbaf2fe22b153b6b020284a6dddbf0c01f9ae5585"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end

cask "font-iosevka" do
  version "34.0.0"
  sha256 "1b07d0d2651950ad963e8306e987eb82e6ad0ed265d93127c7e860be2ce27734"

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

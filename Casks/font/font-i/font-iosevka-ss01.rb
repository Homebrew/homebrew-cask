cask "font-iosevka-ss01" do
  version "33.3.5"
  sha256 "fcf55c9ab82442d21e56c432102b8e6602b99a54b491ed8c67d50afebbac4130"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end

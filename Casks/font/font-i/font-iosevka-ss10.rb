cask "font-iosevka-ss10" do
  version "31.5.0"
  sha256 "ed509ac2d50646d0f972dbfeb3da99de65d70aca12628a8ddb4f2a6259c22b8a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end

cask "font-iosevka-ss03" do
  version "34.3.0"
  sha256 "680b5c468da9b492641f2166167aa028a89bba2a74bf79cd204d3989c60493cc"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end

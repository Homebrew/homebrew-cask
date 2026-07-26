cask "font-iosevka-slab" do
  version "34.8.0"
  sha256 "dbb695e1c0b684eb376af60bbc73e78390e0d900ffe00305052165b819648e6e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end

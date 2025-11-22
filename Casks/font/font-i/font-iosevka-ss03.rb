cask "font-iosevka-ss03" do
  version "33.3.5"
  sha256 "90bbb8b5f4724c1324787849f0c3590c25797f3cad2360c86fe9dc6695af94b4"

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

cask "font-iosevka-ss15" do
  version "33.2.5"
  sha256 "f2c9ee61397a3964071e617ab9a950563941549fbc4f951dedf800a9ea3c1143"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15.ttc"

  # No zap stanza required
end

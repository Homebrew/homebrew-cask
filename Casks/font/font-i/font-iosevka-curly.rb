cask "font-iosevka-curly" do
  version "31.7.1"
  sha256 "f822dfcde7342248d8787a3791dd61fc142b528bd22841b7c57565ad7a47f05d"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  # No zap stanza required
end

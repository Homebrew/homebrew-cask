cask "font-iosevka-curly" do
  version "34.9.2"
  sha256 "a9a4b6fd6a6d19d72a10e82d369363cb456b9a873ef2579a5a92848293d96e80"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurly-#{version}.zip"
  name "Iosevka Curly"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurly.ttc"

  zap :not_required
end

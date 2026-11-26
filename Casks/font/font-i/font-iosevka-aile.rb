cask "font-iosevka-aile" do
  version "34.9.2"
  sha256 "f677aece1f84f059f7e48967ae842e449cf02f4611188e43394d1b21e623bbac"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  zap :not_required
end

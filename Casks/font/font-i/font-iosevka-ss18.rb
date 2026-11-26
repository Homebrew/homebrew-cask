cask "font-iosevka-ss18" do
  version "34.9.2"
  sha256 "05b5a9ba1dc805747fd0181b061d608f7795caba980a5bf6a983ce5b9a3d4e26"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  zap :not_required
end

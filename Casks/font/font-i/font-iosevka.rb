cask "font-iosevka" do
  version "34.6.1"
  sha256 "ff48478ec300081e8b17f66bcc6cf635a83ed26b8d35fbb8a2f203b7a92f54ab"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end

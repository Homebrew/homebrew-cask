cask "font-iosevka" do
  version "32.2.1"
  sha256 "0456fca7cdba4497131c41db8896e6dd418521593e736c3411ae918cfb439283"

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

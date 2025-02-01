cask "font-iosevka" do
  version "32.5.0"
  sha256 "bbd84ec3d9272f9681bc65db539c68964c2bd3cea501a98fb2a240d76e836a7b"

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

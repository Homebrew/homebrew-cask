cask "font-herr-von-muellerhoff" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/herrvonmuellerhoff/HerrVonMuellerhoff-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Herr Von Muellerhoff"
  homepage "https://fonts.google.com/specimen/Herr+Von+Muellerhoff"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Herr Von Muellerhoff",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HerrVonMuellerhoff-Regular.ttf"

  # No zap stanza required
end

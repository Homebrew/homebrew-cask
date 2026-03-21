cask "font-do-hyeon" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dohyeon/DoHyeon-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Do Hyeon"
  homepage "https://fonts.google.com/specimen/Do+Hyeon"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Do Hyeon",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DoHyeon-Regular.ttf"

  # No zap stanza required
end

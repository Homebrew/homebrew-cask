cask "font-tac-one" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tacone/TacOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tac One"
  homepage "https://fonts.google.com/specimen/Tac+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tac One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TacOne-Regular.ttf"

  # No zap stanza required
end

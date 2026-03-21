cask "font-sawarabi-mincho" do
  version "1.082"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sawarabimincho/SawarabiMincho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sawarabi Mincho"
  homepage "https://fonts.google.com/specimen/Sawarabi+Mincho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sawarabi Mincho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SawarabiMincho-Regular.ttf"

  # No zap stanza required
end

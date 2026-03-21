cask "font-paytone-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/paytoneone/PaytoneOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Paytone One"
  homepage "https://fonts.google.com/specimen/Paytone+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Paytone One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PaytoneOne-Regular.ttf"

  # No zap stanza required
end

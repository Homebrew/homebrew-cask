cask "font-abyssinica-sil" do
  version "2.300"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/abyssinicasil/AbyssinicaSIL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Abyssinica SIL"
  homepage "https://fonts.google.com/specimen/Abyssinica+SIL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Abyssinica SIL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AbyssinicaSIL-Regular.ttf"

  # No zap stanza required
end

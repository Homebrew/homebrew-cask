cask "font-siemreap" do
  version "6.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/siemreap/Siemreap.ttf",
      verified: "github.com/google/fonts/"
  name "Siemreap"
  homepage "https://fonts.google.com/specimen/Siemreap"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Siemreap",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Siemreap.ttf"

  # No zap stanza required
end

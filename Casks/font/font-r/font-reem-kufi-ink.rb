cask "font-reem-kufi-ink" do
  version "1.899"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reemkufiink/ReemKufiInk-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Reem Kufi Ink"
  homepage "https://fonts.google.com/specimen/Reem+Kufi+Ink"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reem Kufi Ink",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ReemKufiInk-Regular.ttf"

  # No zap stanza required
end

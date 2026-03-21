cask "font-quintessential" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/quintessential/Quintessential-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Quintessential"
  homepage "https://fonts.google.com/specimen/Quintessential"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Quintessential",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Quintessential-Regular.ttf"

  # No zap stanza required
end

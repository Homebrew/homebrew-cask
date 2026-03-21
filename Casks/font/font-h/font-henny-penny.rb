cask "font-henny-penny" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hennypenny/HennyPenny-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Henny Penny"
  homepage "https://fonts.google.com/specimen/Henny+Penny"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Henny Penny",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HennyPenny-Regular.ttf"

  # No zap stanza required
end

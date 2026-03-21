cask "font-delius-unicase" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/deliusunicase"
  name "Delius Unicase"
  homepage "https://fonts.google.com/specimen/Delius+Unicase"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Delius Unicase",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "DeliusUnicase-Bold.ttf"
  font "DeliusUnicase-Regular.ttf"

  # No zap stanza required
end

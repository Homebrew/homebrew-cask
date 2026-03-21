cask "font-mrs-sheppards" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mrssheppards/MrsSheppards-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Mrs Sheppards"
  homepage "https://fonts.google.com/specimen/Mrs+Sheppards"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Mrs Sheppards",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MrsSheppards-Regular.ttf"

  # No zap stanza required
end

cask "font-milonga" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/milonga/Milonga-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Milonga"
  homepage "https://fonts.google.com/specimen/Milonga"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Milonga",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Milonga-Regular.ttf"

  # No zap stanza required
end

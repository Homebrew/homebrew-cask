cask "font-ribeye" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ribeye/Ribeye-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ribeye"
  homepage "https://fonts.google.com/specimen/Ribeye"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ribeye",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ribeye-Regular.ttf"

  # No zap stanza required
end

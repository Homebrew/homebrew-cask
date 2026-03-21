cask "font-bentham" do
  version "002.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bentham/Bentham-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bentham"
  homepage "https://fonts.google.com/specimen/Bentham"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bentham",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Bentham-Regular.ttf"

  # No zap stanza required
end

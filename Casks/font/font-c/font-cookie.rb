cask "font-cookie" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cookie/Cookie-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cookie"
  homepage "https://fonts.google.com/specimen/Cookie"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cookie",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Cookie-Regular.ttf"

  # No zap stanza required
end

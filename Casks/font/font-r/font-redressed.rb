cask "font-redressed" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/redressed/Redressed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Redressed"
  homepage "https://fonts.google.com/specimen/Redressed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Redressed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Redressed-Regular.ttf"

  # No zap stanza required
end

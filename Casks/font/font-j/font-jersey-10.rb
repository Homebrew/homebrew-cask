cask "font-jersey-10" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey10/Jersey10-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 10"
  homepage "https://fonts.google.com/specimen/Jersey+10"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jersey 10",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jersey10-Regular.ttf"

  # No zap stanza required
end

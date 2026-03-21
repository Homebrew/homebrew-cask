cask "font-butcherman" do
  version "001.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/butcherman/Butcherman-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Butcherman"
  homepage "https://fonts.google.com/specimen/Butcherman"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Butcherman",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Butcherman-Regular.ttf"

  # No zap stanza required
end

cask "font-qahiri" do
  version "3.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/qahiri/Qahiri-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Qahiri"
  homepage "https://fonts.google.com/specimen/Qahiri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Qahiri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Qahiri-Regular.ttf"

  # No zap stanza required
end

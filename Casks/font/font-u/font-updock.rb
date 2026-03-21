cask "font-updock" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/updock/Updock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Updock"
  homepage "https://fonts.google.com/specimen/Updock"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Updock",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Updock-Regular.ttf"

  # No zap stanza required
end

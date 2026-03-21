cask "font-ranchers" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ranchers/Ranchers-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ranchers"
  homepage "https://fonts.google.com/specimen/Ranchers"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ranchers",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ranchers-Regular.ttf"

  # No zap stanza required
end

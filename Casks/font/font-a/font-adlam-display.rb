cask "font-adlam-display" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/adlamdisplay/ADLaMDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "ADLaM Display"
  homepage "https://fonts.google.com/specimen/ADLaM+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "ADLaM Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ADLaMDisplay-Regular.ttf"

  # No zap stanza required
end

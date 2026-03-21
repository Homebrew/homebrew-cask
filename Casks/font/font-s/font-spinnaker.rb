cask "font-spinnaker" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/spinnaker/Spinnaker-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Spinnaker"
  homepage "https://fonts.google.com/specimen/Spinnaker"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Spinnaker",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Spinnaker-Regular.ttf"

  # No zap stanza required
end

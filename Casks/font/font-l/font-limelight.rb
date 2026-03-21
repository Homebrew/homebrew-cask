cask "font-limelight" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/limelight/Limelight-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Limelight"
  homepage "https://fonts.google.com/specimen/Limelight"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Limelight",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Limelight-Regular.ttf"

  # No zap stanza required
end

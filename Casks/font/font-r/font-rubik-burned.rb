cask "font-rubik-burned" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikburned/RubikBurned-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Burned"
  homepage "https://fonts.google.com/specimen/Rubik+Burned"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Burned",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikBurned-Regular.ttf"

  # No zap stanza required
end

cask "font-rubik-mono-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmonoone/RubikMonoOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Mono One"
  homepage "https://fonts.google.com/specimen/Rubik+Mono+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Mono One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikMonoOne-Regular.ttf"

  # No zap stanza required
end

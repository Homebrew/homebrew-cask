cask "font-belanosima" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/belanosima"
  name "Belanosima"
  homepage "https://fonts.google.com/specimen/Belanosima"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Belanosima",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Belanosima-Bold.ttf"
  font "Belanosima-Regular.ttf"
  font "Belanosima-SemiBold.ttf"

  # No zap stanza required
end

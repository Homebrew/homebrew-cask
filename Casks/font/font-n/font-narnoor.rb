cask "font-narnoor" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/narnoor"
  name "Narnoor"
  homepage "https://fonts.google.com/specimen/Narnoor"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Narnoor",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Narnoor-Bold.ttf"
  font "Narnoor-ExtraBold.ttf"
  font "Narnoor-Medium.ttf"
  font "Narnoor-Regular.ttf"
  font "Narnoor-SemiBold.ttf"

  # No zap stanza required
end

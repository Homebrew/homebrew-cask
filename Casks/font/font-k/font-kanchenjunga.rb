cask "font-kanchenjunga" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kanchenjunga"
  name "Kanchenjunga"
  homepage "https://fonts.google.com/specimen/Kanchenjunga"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kanchenjunga",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kanchenjunga-Bold.ttf"
  font "Kanchenjunga-Medium.ttf"
  font "Kanchenjunga-Regular.ttf"
  font "Kanchenjunga-SemiBold.ttf"

  # No zap stanza required
end

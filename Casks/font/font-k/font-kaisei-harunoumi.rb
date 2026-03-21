cask "font-kaisei-harunoumi" do
  version "5.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kaiseiharunoumi"
  name "Kaisei HarunoUmi"
  homepage "https://fonts.google.com/specimen/Kaisei+HarunoUmi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kaisei HarunoUmi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KaiseiHarunoUmi-Bold.ttf"
  font "KaiseiHarunoUmi-Medium.ttf"
  font "KaiseiHarunoUmi-Regular.ttf"

  # No zap stanza required
end

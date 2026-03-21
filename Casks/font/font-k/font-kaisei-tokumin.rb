cask "font-kaisei-tokumin" do
  version "5.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kaiseitokumin"
  name "Kaisei Tokumin"
  homepage "https://fonts.google.com/specimen/Kaisei+Tokumin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kaisei Tokumin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KaiseiTokumin-Bold.ttf"
  font "KaiseiTokumin-ExtraBold.ttf"
  font "KaiseiTokumin-Medium.ttf"
  font "KaiseiTokumin-Regular.ttf"

  # No zap stanza required
end

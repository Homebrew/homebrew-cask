cask "font-kaisei-decol" do
  version "5.003"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kaiseidecol"
  name "Kaisei Decol"
  homepage "https://fonts.google.com/specimen/Kaisei+Decol"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kaisei Decol",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KaiseiDecol-Bold.ttf"
  font "KaiseiDecol-Medium.ttf"
  font "KaiseiDecol-Regular.ttf"

  # No zap stanza required
end

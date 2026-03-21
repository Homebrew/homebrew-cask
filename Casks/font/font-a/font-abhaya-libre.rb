cask "font-abhaya-libre" do
  version "1.050"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/abhayalibre"
  name "Abhaya Libre"
  homepage "https://fonts.google.com/specimen/Abhaya+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Abhaya Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AbhayaLibre-Bold.ttf"
  font "AbhayaLibre-ExtraBold.ttf"
  font "AbhayaLibre-Medium.ttf"
  font "AbhayaLibre-Regular.ttf"
  font "AbhayaLibre-SemiBold.ttf"

  # No zap stanza required
end

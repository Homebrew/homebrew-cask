cask "font-noto-sans-duployan" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notosansduployan"
  name "Noto Sans Duployan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Duployan"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Duployan",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansDuployan-Bold.ttf"
  font "NotoSansDuployan-Regular.ttf"

  # No zap stanza required
end

cask "font-zen-kaku-gothic-new" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zenkakugothicnew"
  name "Zen Kaku Gothic New"
  homepage "https://fonts.google.com/specimen/Zen+Kaku+Gothic+New"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Kaku Gothic New",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenKakuGothicNew-Black.ttf"
  font "ZenKakuGothicNew-Bold.ttf"
  font "ZenKakuGothicNew-Light.ttf"
  font "ZenKakuGothicNew-Medium.ttf"
  font "ZenKakuGothicNew-Regular.ttf"

  # No zap stanza required
end

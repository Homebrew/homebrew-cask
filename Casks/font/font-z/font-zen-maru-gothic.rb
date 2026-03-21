cask "font-zen-maru-gothic" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/zenmarugothic"
  name "Zen Maru Gothic"
  homepage "https://fonts.google.com/specimen/Zen+Maru+Gothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Zen Maru Gothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ZenMaruGothic-Black.ttf"
  font "ZenMaruGothic-Bold.ttf"
  font "ZenMaruGothic-Light.ttf"
  font "ZenMaruGothic-Medium.ttf"
  font "ZenMaruGothic-Regular.ttf"

  # No zap stanza required
end

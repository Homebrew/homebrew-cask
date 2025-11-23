cask "font-kay-pho-du" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kayphodu"
  name "Kay Pho Du"
  homepage "https://fonts.google.com/specimen/Kay+Pho+Du"

  font "KayPhoDu-Bold.ttf"
  font "KayPhoDu-Medium.ttf"
  font "KayPhoDu-Regular.ttf"
  font "KayPhoDu-SemiBold.ttf"

  # No zap stanza required
end

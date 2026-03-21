cask "font-m-plus-rounded-1c" do
  version "1.059.20150529"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mplusrounded1c"
  name "M PLUS Rounded 1c"
  homepage "https://fonts.google.com/specimen/M+PLUS+Rounded+1c"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "M PLUS Rounded 1c",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MPLUSRounded1c-Black.ttf"
  font "MPLUSRounded1c-Bold.ttf"
  font "MPLUSRounded1c-ExtraBold.ttf"
  font "MPLUSRounded1c-Light.ttf"
  font "MPLUSRounded1c-Medium.ttf"
  font "MPLUSRounded1c-Regular.ttf"
  font "MPLUSRounded1c-Thin.ttf"

  # No zap stanza required
end

cask "font-nanum-gothic-coding" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nanumgothiccoding"
  name "Nanum Gothic Coding"
  homepage "https://fonts.google.com/specimen/Nanum+Gothic+Coding"

  font "NanumGothicCoding-Bold.ttf"
  font "NanumGothicCoding-Regular.ttf"

  # No zap stanza required
end

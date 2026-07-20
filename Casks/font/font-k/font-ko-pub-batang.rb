cask "font-ko-pub-batang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kopubbatang"
  name "Ko Pub Batang"
  homepage "https://fonts.google.com/earlyaccess"

  font "KoPubBatang-Bold.ttf"
  font "KoPubBatang-Light.ttf"
  font "KoPubBatang-Regular.ttf"

  # No zap stanza required
end

cask "font-bpmf-iansui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bpmfiansui/BpmfIansui-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bpmf Iansui"
  homepage "https://fonts.google.com/specimen/Bpmf+Iansui"

  font "BpmfIansui-Regular.ttf"

  # No zap stanza required
end

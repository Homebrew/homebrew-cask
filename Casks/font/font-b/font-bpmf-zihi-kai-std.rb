cask "font-bpmf-zihi-kai-std" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bpmfzihikaistd/BpmfZihiKaiStd-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bpmf Zihi Kai Std"
  homepage "https://fonts.google.com/specimen/Bpmf+Zihi+Kai+Std"

  font "BpmfZihiKaiStd-Regular.ttf"

  # No zap stanza required
end

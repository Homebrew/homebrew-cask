cask "font-bpmf-zihi-kai-std" do
  version "1.610"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bpmfzihikaistd/BpmfZihiKaiStd-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bpmf Zihi Kai Std"
  homepage "https://fonts.google.com/specimen/Bpmf+Zihi+Kai+Std"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bpmf Zihi Kai Std",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BpmfZihiKaiStd-Regular.ttf"

  # No zap stanza required
end

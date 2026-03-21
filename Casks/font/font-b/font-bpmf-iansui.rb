cask "font-bpmf-iansui" do
  version "1.610"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bpmfiansui/BpmfIansui-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bpmf Iansui"
  homepage "https://fonts.google.com/specimen/Bpmf+Iansui"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bpmf Iansui",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BpmfIansui-Regular.ttf"

  # No zap stanza required
end

cask "font-nanum-gothic-coding" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nanumgothiccoding"
  name "Nanum Gothic Coding"
  homepage "https://fonts.google.com/specimen/Nanum+Gothic+Coding"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nanum Gothic Coding",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NanumGothicCoding-Bold.ttf"
  font "NanumGothicCoding-Regular.ttf"

  # No zap stanza required
end

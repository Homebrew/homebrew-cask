cask "font-nanum-gothic" do
  version "3.020"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nanumgothic"
  name "Nanum Gothic"
  homepage "https://fonts.google.com/specimen/Nanum+Gothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nanum Gothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NanumGothic-Bold.ttf"
  font "NanumGothic-ExtraBold.ttf"
  font "NanumGothic-Regular.ttf"

  # No zap stanza required
end

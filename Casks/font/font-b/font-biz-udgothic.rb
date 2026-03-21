cask "font-biz-udgothic" do
  version "1.05"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bizudgothic"
  name "BIZ UDGothic"
  homepage "https://fonts.google.com/specimen/BIZ+UDGothic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BIZ UDGothic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BIZUDGothic-Bold.ttf"
  font "BIZUDGothic-Regular.ttf"

  # No zap stanza required
end

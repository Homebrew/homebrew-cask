cask "font-biz-udmincho" do
  version "1.06"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bizudmincho"
  name "BIZ UDMincho"
  homepage "https://fonts.google.com/specimen/BIZ+UDMincho"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "BIZ UDMincho",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BIZUDMincho-Bold.ttf"
  font "BIZUDMincho-Regular.ttf"

  # No zap stanza required
end

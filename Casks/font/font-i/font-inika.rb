cask "font-inika" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inika"
  name "Inika"
  homepage "https://fonts.google.com/specimen/Inika"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Inika",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Inika-Bold.ttf"
  font "Inika-Regular.ttf"

  # No zap stanza required
end

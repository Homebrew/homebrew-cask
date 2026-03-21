cask "font-namdhinggo" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/namdhinggo"
  name "Namdhinggo"
  homepage "https://fonts.google.com/specimen/Namdhinggo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Namdhinggo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Namdhinggo-Bold.ttf"
  font "Namdhinggo-ExtraBold.ttf"
  font "Namdhinggo-Medium.ttf"
  font "Namdhinggo-Regular.ttf"
  font "Namdhinggo-SemiBold.ttf"

  # No zap stanza required
end

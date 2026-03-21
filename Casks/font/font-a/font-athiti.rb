cask "font-athiti" do
  version "1.033"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/athiti"
  name "Athiti"
  homepage "https://fonts.google.com/specimen/Athiti"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Athiti",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Athiti-Bold.ttf"
  font "Athiti-ExtraLight.ttf"
  font "Athiti-Light.ttf"
  font "Athiti-Medium.ttf"
  font "Athiti-Regular.ttf"
  font "Athiti-SemiBold.ttf"

  # No zap stanza required
end

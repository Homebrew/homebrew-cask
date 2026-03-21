cask "font-tirra" do
  version "4.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirra"
  name "Tirra"
  homepage "https://fonts.google.com/specimen/Tirra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tirra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Tirra-Black.ttf"
  font "Tirra-Bold.ttf"
  font "Tirra-ExtraBold.ttf"
  font "Tirra-Medium.ttf"
  font "Tirra-Regular.ttf"
  font "Tirra-SemiBold.ttf"

  # No zap stanza required
end

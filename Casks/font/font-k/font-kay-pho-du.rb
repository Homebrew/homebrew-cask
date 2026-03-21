cask "font-kay-pho-du" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kayphodu"
  name "Kay Pho Du"
  homepage "https://fonts.google.com/specimen/Kay+Pho+Du"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kay Pho Du",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KayPhoDu-Bold.ttf"
  font "KayPhoDu-Medium.ttf"
  font "KayPhoDu-Regular.ttf"
  font "KayPhoDu-SemiBold.ttf"

  # No zap stanza required
end

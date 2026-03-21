cask "font-kedebideri" do
  version "3.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kedebideri"
  name "Kedebideri"
  homepage "https://fonts.google.com/specimen/Kedebideri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kedebideri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kedebideri-Black.ttf"
  font "Kedebideri-Bold.ttf"
  font "Kedebideri-ExtraBold.ttf"
  font "Kedebideri-Medium.ttf"
  font "Kedebideri-Regular.ttf"
  font "Kedebideri-SemiBold.ttf"

  # No zap stanza required
end

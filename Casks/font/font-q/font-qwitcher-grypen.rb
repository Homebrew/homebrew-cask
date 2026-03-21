cask "font-qwitcher-grypen" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/qwitchergrypen"
  name "Qwitcher Grypen"
  homepage "https://fonts.google.com/specimen/Qwitcher+Grypen"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Qwitcher Grypen",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "QwitcherGrypen-Bold.ttf"
  font "QwitcherGrypen-Regular.ttf"

  # No zap stanza required
end

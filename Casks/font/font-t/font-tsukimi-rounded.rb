cask "font-tsukimi-rounded" do
  version "1.032"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tsukimirounded"
  name "Tsukimi Rounded"
  homepage "https://fonts.google.com/specimen/Tsukimi+Rounded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Tsukimi Rounded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TsukimiRounded-Bold.ttf"
  font "TsukimiRounded-Light.ttf"
  font "TsukimiRounded-Medium.ttf"
  font "TsukimiRounded-Regular.ttf"
  font "TsukimiRounded-SemiBold.ttf"

  # No zap stanza required
end

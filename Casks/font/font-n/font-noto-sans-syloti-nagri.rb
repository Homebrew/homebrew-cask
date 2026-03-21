cask "font-noto-sans-syloti-nagri" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssylotinagri/NotoSansSylotiNagri-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syloti Nagri"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syloti+Nagri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Syloti Nagri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSylotiNagri-Regular.ttf"

  # No zap stanza required
end

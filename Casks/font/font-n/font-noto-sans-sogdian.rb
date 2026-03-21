cask "font-noto-sans-sogdian" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssogdian/NotoSansSogdian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sogdian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sogdian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Sogdian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansSogdian-Regular.ttf"

  # No zap stanza required
end

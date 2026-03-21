cask "font-nanum-myeongjo" do
  version "2.032"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/nanummyeongjo"
  name "Nanum Myeongjo"
  homepage "https://fonts.google.com/specimen/Nanum+Myeongjo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Nanum Myeongjo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NanumMyeongjo-Bold.ttf"
  font "NanumMyeongjo-ExtraBold.ttf"
  font "NanumMyeongjo-Regular.ttf"

  # No zap stanza required
end

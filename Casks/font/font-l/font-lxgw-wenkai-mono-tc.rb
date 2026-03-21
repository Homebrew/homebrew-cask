cask "font-lxgw-wenkai-mono-tc" do
  version "1.330"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lxgwwenkaimonotc"
  name "LXGW WenKai Mono TC"
  homepage "https://fonts.google.com/specimen/LXGW+WenKai+Mono+TC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "LXGW WenKai Mono TC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LXGWWenKaiMonoTC-Bold.ttf"
  font "LXGWWenKaiMonoTC-Light.ttf"
  font "LXGWWenKaiMonoTC-Regular.ttf"

  # No zap stanza required
end

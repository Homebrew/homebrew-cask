cask "font-lxgw-wenkai-mono-tc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/lxgwwenkaimonotc"
  name "LXGW WenKai Mono TC"
  homepage "https://github.com/aaronbell/LxgwWenkaiTC"

  font "LXGWWenKaiMonoTC-Bold.ttf"
  font "LXGWWenKaiMonoTC-Light.ttf"
  font "LXGWWenKaiMonoTC-Regular.ttf"

  # No zap stanza required
end

cask "font-mynaui-icons" do
  version "0.3.6"
  sha256 "1a07933b6efa8388f707b609ae09cb7b285049f9283b6ec3dab277cae9d81791"

  url "https://github.com/praveenjuge/mynaui-icons/archive/refs/tags/v#{version}.tar.gz",
      verified: "github.com/praveenjuge/mynaui-icons/"
  name "MynaUI Icons"
  homepage "https://mynaui.com/icons"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "mynaui-icons-#{version}/packages/icons/mynaui-solid.ttf"
  font "mynaui-icons-#{version}/packages/icons/mynaui.ttf"

  # No zap stanza required
end

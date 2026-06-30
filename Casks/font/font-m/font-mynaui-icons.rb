cask "font-mynaui-icons" do
  version "0.4.6"
  sha256 "a50f1bec7c419267c00800f05f0a770dddb947f5e9f75a3f811b4f0647031d0e"

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

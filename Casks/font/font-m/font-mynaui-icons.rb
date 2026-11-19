cask "font-mynaui-icons" do
  version "0.4.12"
  sha256 "bdcc50b40f6586481f3186bdbba9ee346ee4b20809dda770da413e685f8db516"

  url "https://github.com/praveenjuge/mynaui-icons/archive/refs/tags/v#{version}.tar.gz"
  name "MynaUI Icons"
  homepage "https://mynaui.com/icons"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "mynaui-icons-#{version}/packages/icons/mynaui-solid.ttf"
  font "mynaui-icons-#{version}/packages/icons/mynaui.ttf"

  zap :not_required
end

cask "font-mynaui-icons" do
  version "0.4.2"
  sha256 "4dca8037d1015c7aa94bdda71fca9b4fac2328cb0799d482fe02b70a7cb7058e"

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

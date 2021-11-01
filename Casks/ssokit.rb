cask "ssokit" do
  version "1.1.8"
  sha256 "f0f947d46997c3cfa418b238315d427a4c6e3fc7c2c40e6b43b708f3b4ceee33"

  url "https://github.com/rangaofei/SSokit-qmake/releases/download/#{version}/SSokit_#{version}.dmg"
  name "SSokit"
  desc "TCP and UDP debug tool"
  homepage "https://github.com/rangaofei/SSokit-qmake"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "SSokit.app"

  zap trash: "~/Library/Preferences/cn.rangaofei.SSokit.plist"
end

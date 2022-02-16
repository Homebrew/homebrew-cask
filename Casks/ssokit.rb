cask "ssokit" do
  version "1.2.0"
  sha256 "996cbcf1219ef43afed9d6f77de89cc8a8fb345cbe83417a966687a0625114eb"

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

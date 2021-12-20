cask "ssokit" do
  version "1.1.9"
  sha256 "aaed0ebb55b84a2fde9f7ad77ad96dbf7c415a558d4dc8c2b92a1e445882c510"

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

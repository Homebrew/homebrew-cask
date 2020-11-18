cask "scaleft" do
  version "1.50.3"
  sha256 "53b605fe245f2570b9db6658c43084ba257f1422a149075bec83a14806e47bf8"

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg"
  name "ScaleFT"
  homepage "https://www.scaleft.com/docs/sft-osx/"

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end

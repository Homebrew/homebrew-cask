cask "scaleft" do
  version "1.50.1"
  sha256 "5a140828947df5848923f209f387c9ee0749b15e51463899d406f2ef62be2df1"

  url "https://dist.scaleft.com/client-tools/mac/v#{version}/ScaleFT-#{version}.pkg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://dist.scaleft.com/client-tools/mac/latest/ScaleFT.pkg"
  name "ScaleFT"
  homepage "https://www.scaleft.com/docs/sft-osx/"

  pkg "ScaleFT-#{version}.pkg"

  uninstall pkgutil: "com.scaleft.ScaleFT"

  zap trash: "~/Library/Caches/com.scaleft.ScaleFT"
end

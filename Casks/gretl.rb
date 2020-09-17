cask "gretl" do
  version "2020d"
  sha256 "6785f717d4b548b0edb99cb412d579009b725e8db9a65630d21ee69523b00024"

  # downloads.sourceforge.net/gretl/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast "https://sourceforge.net/projects/gretl/rss?path=/gretl"
  name "gretl"
  homepage "https://gretl.sourceforge.io/"

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"
end

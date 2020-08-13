cask "gretl" do
  version "2020c"
  sha256 "cedc6b931ed5aaed4fe065bf720f2e0f032c6b59a92a467fe4adcf51c38af520"

  # downloads.sourceforge.net/gretl/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast "https://sourceforge.net/projects/gretl/rss?path=/gretl"
  name "gretl"
  homepage "https://gretl.sourceforge.io/"

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"
end

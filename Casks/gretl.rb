cask "gretl" do
  version "2020e"
  sha256 "36c248c5f4aeebf9cc86146515736d5045f1c73a903a78918ce0b85e2bdbe20c"

  # downloads.sourceforge.net/gretl/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-quartz.pkg"
  appcast "https://sourceforge.net/projects/gretl/rss?path=/gretl"
  name "gretl"
  homepage "https://gretl.sourceforge.io/"

  pkg "gretl-#{version}-quartz.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"
end

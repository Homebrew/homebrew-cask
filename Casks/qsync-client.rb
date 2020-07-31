cask "qsync-client" do
  version "3.5.0.0612"
  sha256 "9595c63bd5debce7e872435e991365358c18dda801fc8488427153a1b6a03383"

  url "https://download.qnap.com/Storage/Utility/QNAPQsyncClientMac-#{version}.dmg"
  appcast "https://update.qnap.com/SoftwareRelease.xml"
  name "Qnap Qsync"
  homepage "https://www.qnap.com/i/in/utility/#block_3"

  installer manual: "Qsync Client.pkg"

  uninstall pkgutil: "com.qnap.qsync.*"
end

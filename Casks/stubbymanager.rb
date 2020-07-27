cask "stubbymanager" do
  version "0.2.6,6782984"
  sha256 "0b9de130ac55e02928a21f334ac5c481b092e6535445a402caa7bb165b0b3dba"

  url "https://dnsprivacy.org/wiki/download/attachments/#{version.after_comma}/StubbyManager.pkg"
  appcast "https://github.com/Sinodun/stubby_manager_gui/releases.atom"
  name "StubbyManager"
  homepage "https://dnsprivacy.org/wiki/display/DP/Stubby+GUI+for+macOS"

  pkg "StubbyManager.pkg"

  uninstall pkgutil: "com.sinodun.pkg.Stubby"
end

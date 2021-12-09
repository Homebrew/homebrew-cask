cask "finalshell" do
  version "3.9.2"
  sha256 :no_check

  url "http://www.hostbuf.com/downloads/finalshell_install.pkg"
  name "finalshell"
  desc "一体化的的服务器,网络管理软件,不仅是ssh客户端,还是功能强大的开发,运维工具,充分满足开发,运维需求."
  homepage "http://www.hostbuf.com/"

  pkg "finalshell_install.pkg"

  uninstall quit:[
    "finalshellinstall.all"
  ],
  delete:    [
    "/Applications/FinalShell.app",
  ],
  rmdir:  "~/Library/FinalShell/"
end

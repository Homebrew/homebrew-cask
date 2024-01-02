cask "finalshell" do
  version "4.3.10"
  sha256 :no_check

  url "http://dl.hostbuf.com/finalshell2/finalshell_install.pkg"
  name "FinalShell"
  desc "SSH tool, server management and remote desktop acceleration software"
  homepage "https://www.hostbuf.com/"

  livecheck do
    url "https://www.hostbuf.com/t/989.html"
    regex(/版本号(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "finalshell_install.pkg"

  uninstall quit:    "finalshellinstall.all",
            pkgutil: [
              "finalshellinstall.all",
              "st",
            ],
            delete:  "/Applications/FinalShell.app"

  zap trash: [
    "~/fsdownload",
    "~/Library/FinalShell",
    "~/Library/Saved Application State/myssh.savedState",
  ]
end

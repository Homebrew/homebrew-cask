cask "metasploit" do
  version "6.0.4,20200831102836"
  sha256 "3d2d0bf20804d58f8f45208aad12ad68c9a97dcbfd01af3124fef1dbb412e01d"

  url "https://osx.metasploit.com/metasploit-framework-#{version.before_comma}+#{version.after_comma}-1rapid7-1.pkg"
  appcast "https://osx.metasploit.com/LATEST"
  name "Metasploit Framework"
  homepage "https://www.metasploit.com/"

  depends_on formula: "nmap"

  pkg "metasploit-framework-#{version.before_comma} #{version.after_comma}-1rapid7-1.pkg"
  binary "/opt/metasploit-framework/bin/msfbinscan"
  binary "/opt/metasploit-framework/bin/msfconsole"
  binary "/opt/metasploit-framework/bin/msfd"
  binary "/opt/metasploit-framework/bin/msfdb"
  binary "/opt/metasploit-framework/bin/msfelfscan"
  binary "/opt/metasploit-framework/bin/msfmachscan"
  binary "/opt/metasploit-framework/bin/msfpescan"
  binary "/opt/metasploit-framework/bin/msfrop"
  binary "/opt/metasploit-framework/bin/msfrpc"
  binary "/opt/metasploit-framework/bin/msfrpcd"
  binary "/opt/metasploit-framework/bin/msfvenom"

  uninstall script: {
    executable: "/opt/metasploit-framework/bin/msfremove",
    input:      ["y"],
    sudo:       true,
  },
            rmdir:  "/opt/metasploit-framework"

  zap trash: "~/.msf4"
end

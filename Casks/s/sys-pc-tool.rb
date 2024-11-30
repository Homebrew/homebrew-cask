cask "sys-pc-tool" do
  version "6.33"
  sha256 "509e6b833c7fc907c3c0989704b941acba6f9d13abe5f0c20834ee4d77eb0c4f"

  url "https://www.syride.com/downloads/SYS_PC_Tool_setup_mac-#{version}.pkg"
  name "SYS PC Tool"
  desc "Software for Syride instruments"
  homepage "https://www.syride.com/"

  livecheck do
    url "http://www.syride.com/downloads/SYS_PC_Tool/webconfig-para4.xml"
    regex(/SYS[._-]PC[._-]Tool[._-]setup[._-]mac[._-]v?(\d+(?:[.-]\d+)+)\.pkg/i)
    strategy :xml do |xml, regex|
      url = xml.elements["//sysui_config[@machine='mac']/file"]&.text&.strip
      match = url.match(regex) if url

      match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "SYS_PC_TOOL_setup_mac-#{version}.pkg"

  uninstall pkgutil: "com.syride.syspctool",
            delete:  "/Applications/SYS-PC-Tool.app"

  zap trash: [
    "~/.syride",
    "~/Library/Saved Application State/Syride.SYS-PC-Tool.savedState",
    "~/syride",
  ]
end

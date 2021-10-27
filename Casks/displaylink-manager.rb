cask "displaylink-manager" do
  version "1.5"
  sha256 "d703cc8e9093e4d163c5e612326c0907a02c6d4eec6aaca8d0727503859ef95d"

  url "https://www.synaptics.com/sites/default/files/exe_files/2021-09/DisplayLink%20Manager%20Graphics%20Connectivity#{version}-EXE.pkg"
  name "DisplayLink Manager"
  desc "Drivers for DisplayLink dock, adaptors and monitors"
  homepage "https://www.synaptics.com/products/displaylink-graphics"

  livecheck do
    skip "Unable to extract the version from the URL"
  end

  depends_on macos: ">= :catalina"

  pkg "DisplayLink Manager Graphics Connectivity#{version}-EXE.pkg"

  uninstall pkgutil: [
    "com.displaylink.uninstaller",
    "com.displaylink.displaylinkloginscreenext",
    "com.displaylink.displaylinkmanagerapp",
  ],
            quit:    "com.displaylink.DisplayLinkUserAgent"
end

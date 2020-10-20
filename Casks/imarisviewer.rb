cask "imarisviewer" do
  version "9.6.0"
  sha256 "0ac9c887fa03a592c046a8b6181cf21e32961acbef1e79f1c1888f063cec58c6"

  # viewer.imaris.com/ was verified as official when first introduced to the cask
  url "https://viewer.imaris.com/download/ImarisViewer#{version.dots_to_underscores}m.dmg"
  name "Imaris Viewer"
  desc "3D/4D microscopy image viewer"
  homepage "https://imaris.oxinst.com/imaris-viewer"

  depends_on macos: ">= :sierra"

  pkg "ImarisViewer#{version.dots_to_underscores}m.pkg"

  uninstall quit:    "com.bitplane.ImarisViewer",
            pkgutil: "com.bitplane.pkg.ImarisViewer#{version}",
            delete:  [
              "/Library/Application Support/Bitplane",
              "/Library/Bitplane",
            ]

  zap trash: [
    "~/Imaris Demo Images",
    "~/Library/Application Support/Bitplane",
    "~/Library/Preferences/com.bitplane.Imaris.plist",
    "~/Library/Preferences/com.bitplane.Imaris Viewer #{version.major_minor}.plist",
    "~/Library/Preferences/com.bitplane.Proxy.plist",
    "~/Library/Saved Application State/com.bitplane.ImarisViewer.savedState",
  ]
end

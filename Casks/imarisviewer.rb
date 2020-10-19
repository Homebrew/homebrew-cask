cask "imarisviewer" do
  version "9.6.0"
  sha256 "0ac9c887fa03a592c046a8b6181cf21e32961acbef1e79f1c1888f063cec58c6"

  url "https://viewer.imaris.com/download/ImarisViewer#{version.dots_to_underscores}m.dmg"
  name "Imaris Viewer"
  desc "Imaris Viewer is a free 3D/4D microscopy image viewer"
  homepage "https://imaris.oxinst.com/imaris-viewer"

  pkg "ImarisViewer#{version.dots_to_underscores}m.pkg"

  uninstall pkgutil: "com.appgate.pkg.appgatetun.component",
            quit:      [
              "com.bitplane.ImarisViewer",
            ]


  zap trash: [
    "/Library/Application Support/Bitplane",
    "/Library/Bitplane",
    "~/Library/Preferences/com.bitplane.*",
    "~/Library/Saved Application State/com.bitplane.ImarisViewer.savedState",
  ]
end

cask "elegoo-slicer" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "Mac_#{arch}", linux: "Linux_Ubuntu2404"
  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  version "1.5.2.2"

  on_macos do
    sha256 arm:   "6ebd483669595aedcfe0a3fe44e28902caf2b544464d0bb6f71f855ddb633d1c",
           intel: "35201584803446e88534eeaed9bcf4c0cd9f72fe2d29d854b50f51e749c7f0e6"

    app "ElegooSlicer.app"

    zap trash: [
      "~/Library/Application Support/ElegooSlicer",
      "~/Library/Caches/com.elegoo3d.elegoo-slicer",
      "~/Library/Preferences/com.elegoo3d.elegoo-slicer.plist",
      "~/Library/Saved Application State/com.elegootechsupport.elegoo-slicer.savedState",
    ]
  end
  on_linux do
    sha256 "353400941eb1bea9350201458feb4246886054fc53e7c71546bac08287fec29c"

    depends_on arch: :x86_64

    app_image "ElegooSlicer_Linux_Ubuntu2404_V#{version}.AppImage", target: "ElegooSlicer.AppImage"
  end

  url "https://github.com/ELEGOO-3D/ElegooSlicer/releases/download/v#{version}/ElegooSlicer_#{os}_V#{version}#{url_end}"
  name "ElegooSlicer"
  desc "Open-source slicer for FDM 3D printers"
  homepage "https://github.com/ELEGOO-3D/ElegooSlicer"

  livecheck do
    url :url
    strategy :github_latest
  end
end

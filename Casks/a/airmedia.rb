cask "airmedia" do
  version "4.1.14"
  sha256 "40bdda14fb0aa346bc630df14563fd2a6ef165c6d21cda8c2681affd2b2eee43"

  url "https://www.crestron.com/software_files_public/am-100/airmedia_osx_#{version}_installer.pkg"
  name "Crestron AirMedia"
  desc "Touchless presentation and collaboration software"
  homepage "https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations"

  livecheck do
    url "https://crestronairmedia.blob.core.windows.net/blob/packages/mac/released/airmedia_manifest.json"
    strategy :json do |json|
      json["full_version"]
    end
  end

  pkg "airmedia_osx_#{version}_installer.pkg"

  uninstall launchctl: "com.crestron.AirMedia2",
            quit:      "com.crestron.AirMedia2",
            pkgutil:   [
              "com.crestron.AirMedia2",
              "com.crestron.CrestronAudioPlugin",
            ]

  caveats do
    requires_rosetta
  end
end

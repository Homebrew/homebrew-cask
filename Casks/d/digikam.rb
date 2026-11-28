cask "digikam" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x86_64", linux: "x86-64")
  os macos: "-MacOS"
  variant = on_system_conditional macos: on_arch_conditional(arm: "Qt6", intel: "Qt6"), linux: "Qt6"
  file_ext = on_system_conditional macos: "pkg", linux: "appimage"

  version "9.2.0"
  sha256 arm:          "61af8865a0a95f6a043af01a4c96117701c4442c0c40ce1d28f8cb6f789e36f5",
         intel:        "d9c09bfd1820957962a13d4c2146ac5393fb9498576276fd0d969e7194a482ce",
         x86_64_linux: "bc95f6999b82612805fcc81d55e6a5c95aaa882acfca7f0bed87ec7840f7f37f"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    pkg "digiKam-#{version}-#{variant}-MacOS-#{arch}.pkg"

    uninstall pkgutil: [
                "org.digiKam",
                "org.kde.digikam",
              ],
              delete:  [
                "/Applications/digiKam.org/digikam.app",
                "/Applications/digiKam.org/showfoto.app",
              ]

    zap trash: [
      "~/Library/Application Support/digikam",
      "~/Library/Caches/digikam",
      "~/Library/Preferences/digikam.plist",
      "~/Library/Preferences/digikamrc",
      "~/Library/Saved Application State/digikam.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "digiKam-#{version}-Qt6-x86-64.appimage", target: "digiKam.AppImage"

    zap trash: [
      "~/.cache/digikam",
      "~/.config/digikam_systemrc",
      "~/.config/digikamrc",
      "~/.local/share/digikam",
      "~/.local/state/digikamstaterc",
    ]
  end

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-#{variant}#{os}-#{arch}.#{file_ext}"
  name "digiKam"
  desc "Digital photo manager"
  homepage "https://www.digikam.org/"

  livecheck do
    url "https://download.kde.org/stable/digikam/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end

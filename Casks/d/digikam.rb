cask "digikam" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x86_64", linux: "x86-64")
  os macos: "-MacOS"
  variant = on_system_conditional macos: on_arch_conditional(arm: "Qt6", intel: "Qt5"), linux: "Qt6"
  file_ext = on_system_conditional macos: "pkg", linux: "appimage"

  version "9.1.0"
  sha256 arm:          "280fb7f8bd69f512946b1a5acc63a4f4fb66aed464afc2a03a3e4355150cc8ac",
         intel:        "d5edf0f8e498dad0e6748c3bdc9a55433bf8b43601d8467704f47cc995b3f4a2",
         x86_64_linux: "0f2f61f2cde14718d709db6b37877fdb9f61b734cd3b2b9b812ebac1c00c8cae"

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

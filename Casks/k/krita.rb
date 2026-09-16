cask "krita" do
  arch intel: on_system_conditional(linux: "x86_64")
  os macos: "signed"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.3.4"
  sha256 arm:          "8e66539e38b8becfd31093a7701144c340c1789370b75e10a3703322739275d7",
         intel:        "8e66539e38b8becfd31093a7701144c340c1789370b75e10a3703322739275d7",
         x86_64_linux: "217c2f3cf17c2c604deb8708253ee6d2bd884f508424c20e788c562ddc50f24d"

  on_macos do
    # Renamed for consistency: app name is different in the Finder and in a shell.
    app "krita.app", target: "Krita.app"

    zap trash: [
      "~/Library/Application Scripts/org.krita.*",
      "~/Library/Application Support/krita*",
      "~/Library/Caches/krita",
      "~/Library/Containers/org.krita.*",
      "~/Library/Preferences/kritadisplayrc",
      "~/Library/Preferences/kritarc",
      "~/Library/Saved Application State/org.krita.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "krita-#{version}-#{arch}.AppImage", target: "Krita.AppImage"
  end

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}-#{arch}#{os}.#{url_end}"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)[._-](?:#{arch}|#{os}|release)?\.#{url_end}/i)
  end
end

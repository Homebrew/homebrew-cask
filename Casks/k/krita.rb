cask "krita" do
  arch intel: on_system_conditional(linux: "x86_64")
  os macos: "signed"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.3.3"

  on_macos do
    sha256 "625e37c01cfb74094ae58353dd9d343cd389a00c33cb65d6ddf1f2f1e2bc3a19"

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
    sha256 "1e3fff5da006c0d2600f98a41aa2c9a7dfa49bd931f3640616f30d762db4f743"

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

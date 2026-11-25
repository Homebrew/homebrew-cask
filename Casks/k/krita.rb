cask "krita" do
  arch intel: on_system_conditional(linux: "x86_64")
  os macos: "signed"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.3.5"
  sha256 arm:          "273f61d6b6a0bfacb21084336cc6522b66c1d74b9f92a59e641b69cd66988175",
         intel:        "273f61d6b6a0bfacb21084336cc6522b66c1d74b9f92a59e641b69cd66988175",
         x86_64_linux: "05bfa8e17d61c5f626842892f48c9074503708d1ddd1d87ad841dd2d2af19fa8"

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

    zap trash: [
      "~/.cache/krita",
      "~/.config/kritadisplayrc",
      "~/.config/kritarc",
      "~/.local/share/krita",
      "~/.local/share/krita-sysinfo.log",
      "~/.local/share/krita.log",
    ]
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

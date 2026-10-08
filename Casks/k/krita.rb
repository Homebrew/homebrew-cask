cask "krita" do
  arch intel: on_system_conditional(linux: "x86_64")
  os macos: "signed"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.3.4.1"
  sha256 arm:          "531e261da1fd8d5c468cfcd4eebd16e9edf6ab320e89406d2875f2e43c1148de",
         intel:        "531e261da1fd8d5c468cfcd4eebd16e9edf6ab320e89406d2875f2e43c1148de",
         x86_64_linux: "e315dfb3da81cdb8bddc4bb3fcd4d9bacd0630fc7065d8ed07de758b267573f0"

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

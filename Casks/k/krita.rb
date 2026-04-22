cask "krita" do
  version "5.3.1"
  download_suffix = on_system_conditional linux: "-x86_64.AppImage", macos: "-signed.dmg"

  sha256 arm:          "7992f864e55b8cad4901b89c9c98d25565a05153d6f52a08820aceff6a1af438",
         x86_64:       "7992f864e55b8cad4901b89c9c98d25565a05153d6f52a08820aceff6a1af438",
         x86_64_linux: "7379d3a3fbfaee28c63929caafd1ce385619ffeef287e640698c7f9341ab7180"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}#{download_suffix}",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)(?:[._-]signed|[._-]release)?\.dmg/i)
  end

  on_macos do
    app "krita.app"
  end

  on_linux do
    depends_on arch: [:x86_64]
    app_image "krita-#{version}#{download_suffix}"
  end

  zap trash: [
    "~/Library/Application Support/krita",
    "~/Library/Preferences/kritadisplayrc",
    "~/Library/Preferences/kritarc",
    "~/Library/Saved Application State/org.krita.savedState",
  ]
end

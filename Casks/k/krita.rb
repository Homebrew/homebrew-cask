cask "krita" do
  version "5.2.13"
  download_suffix = on_system_conditional linux: "-x86_64.AppImage", macos: "_signed.dmg"
  sha256 arm: "17ccfbf2b72fcca314ce59c6d6f0b62dda1dc230ece71aa42f56031ef75ea6e8",
         x86_64: "17ccfbf2b72fcca314ce59c6d6f0b62dda1dc230ece71aa42f56031ef75ea6e8",
         x86_64_linux: "5fd9e52a25caa5cd7d3d3269898cceb1465b3ce497abd8eee0e84d7bd8668c91"

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

cask "krita" do
  version "5.2.11"
  sha256 arm: "c38443656c017e299264473c9d11f4f92aca63b1475bda325a0a0f969973a147",
         x86_64: "c38443656c017e299264473c9d11f4f92aca63b1475bda325a0a0f969973a147",
         x86_64_linux: "09c0c325bdf9b1e8494ce9ae8322b6ca5fcb337a7d4b08c8f3b98b8ab95c5bfd"
  download_suffix = on_system_conditional linux: "-x86_64.AppImage", macos: ".dmg"

  url "https://download.kde.org/stable/krita/#{version}/krita-#{version}#{download_suffix}",
      verified: "download.kde.org/stable/krita/"
  name "Krita"
  desc "Free and open-source painting and sketching program"
  homepage "https://krita.org/"

  livecheck do
    url "https://krita.org/en/download/"
    regex(/href=.*?krita[._-]v?(\d+(?:\.\d+)+)(?:-signed|-release)?\.dmg/i)
  end

  on_macos do
    depends_on macos: ">= :high_sierra"

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

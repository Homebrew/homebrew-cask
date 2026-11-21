cask "kdenlive" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macOS", linux: "linux"
  file_ext = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.08.3"
  sha256 arm:          "22b385f1e2e5bf45c5bb6954bd58a97db34cead219a9a9ae6faa499f0096d71e",
         intel:        "b684c02ab48923d6a3297f0b1f676fada53c66e04d933d5d924d350957c2b7fd",
         x86_64_linux: "2c8322edfc86605e4c98a78a019310d9b4fc46bb8e94e6fe313dc7dd987e7671"

  on_macos do
    depends_on macos: :ventura

    app "kdenlive.app"

    zap trash: [
      "~/Library/Application Support/kdenlive",
      "~/Library/Caches/kdenlive",
      "~/Library/Preferences/kdenlive-layoutsrc",
      "~/Library/Preferences/kdenliverc",
      "~/Library/Preferences/org.kde.Kdenlive.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "kdenlive-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-#{arch}.AppImage",
              target: "Kdenlive.AppImage"

    zap trash: [
      "~/.cache/audioCache.kcache",
      "~/.cache/kdenlive",
      "~/.config/kdenlive-appimagerc",
      "~/.local/share/kdenlive",
      "~/.local/share/knewstuff3/kdenlive_*.knsregistry",
      "~/.local/share/kxmlgui5/kdenlive",
      "~/.local/state/kdenlivestaterc",
    ]
  end

  url "https://cdn.download.kde.org/stable/kdenlive/#{version.csv.first.major_minor}/#{os}/kdenlive-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second}-#{arch}.#{file_ext}"
  name "Kdenlive"
  desc "Free and Open Source Video Editor"
  homepage "https://kdenlive.org/"

  livecheck do
    url "https://kdenlive.org/download/"
    regex(/href=.*?kdenlive[._-]v?(\d+(?:[.-]\d+)+)(?:[._-]([A-Z]?))?[._-]#{arch}\.#{file_ext}/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[1] ? "#{match[0]},#{match[1]}" : match[0] }
    end
  end
end

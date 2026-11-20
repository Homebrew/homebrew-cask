cask "shotcut" do
  os = on_system_conditional macos: "macos", linux: "linux-x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  sha256 arm:          "664c6ea4195d58dbf3fd43f3d74ae46d59b6310f9ac628d5e70a8e2786a4f80b",
         intel:        "664c6ea4195d58dbf3fd43f3d74ae46d59b6310f9ac628d5e70a8e2786a4f80b",
         x86_64_linux: "5e2324f32eafc72de0cbd5f1882c54b058ec94efd6973e3f197b844ca4311c4a"

  on_macos do
    version "26.11.15"

    depends_on macos: :monterey

    app "Shotcut.app"

    zap trash: [
      "~/Library/Application Support/Meltytech",
      "~/Library/Caches/Meltytech",
      "~/Library/Preferences/com.meltytech.Shotcut.plist",
    ]
  end
  on_linux do
    version "26.11.15"

    depends_on arch: :x86_64

    app_image "shotcut-linux-x86_64-#{version.csv.first}.AppImage", target: "Shotcut.AppImage"

    zap trash: [
      "~/.cache/Meltytech",
      "~/.config/Meltytech",
      "~/.local/share/Meltytech",
    ]
  end

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.csv.second || version.csv.first}/shotcut-#{os}-#{version.csv.first}.#{url_end}"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/shotcut[._-]#{os}[._-]v?(\d+(?:\.\d+)*)\.#{url_end}$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[1] == match[2]) ? match[1] : "#{match[2]},#{match[1]}"
      end
    end
  end

  auto_updates true
end

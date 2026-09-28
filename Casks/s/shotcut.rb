cask "shotcut" do
  os = on_system_conditional macos: "macos", linux: "linux-x86_64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.9.27"
  sha256 arm:          "629b056bfee1670c1669dd73f19f76fe48e0cdf90e184dc1aa1bdd6d09aa2548",
         intel:        "629b056bfee1670c1669dd73f19f76fe48e0cdf90e184dc1aa1bdd6d09aa2548",
         x86_64_linux: "a3da4b409d29b31294fe5097bb8c3f031d1e2cb0c14ff71717d1a7d4658e62de"

  on_macos do
    depends_on macos: :monterey

    app "Shotcut.app"

    zap trash: [
      "~/Library/Application Support/Meltytech",
      "~/Library/Caches/Meltytech",
      "~/Library/Preferences/com.meltytech.Shotcut.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "shotcut-linux-x86_64-#{version.csv.second || version.csv.first}.AppImage", target: "Shotcut.AppImage"

    zap trash: [
      "~/.cache/Meltytech",
      "~/.config/Meltytech",
      "~/.local/share/Meltytech",
    ]
  end

  url "https://github.com/mltframework/shotcut/releases/download/v#{version.csv.first}/shotcut-#{os}-#{version.csv.second || version.csv.first}.#{url_end}"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/shotcut[._-]macos[._-]v?(\d+(?:\.\d+)*)\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        next match[1] if match[1].tr(".", "") == match[2].tr(".", "")

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
end

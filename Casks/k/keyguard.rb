cask "keyguard" do
  arch arm:   on_system_conditional(macos: "apple", linux: "aarch64"),
       intel: on_system_conditional(macos: "intel", linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.7.0,20261103"
  sha256 arm:          "0685f1626cff36a5800785cf03d24b3ce6a1f0fd07adae27e0aa22d1ce62433a",
         intel:        "ca56cb6c1b3bd909ca0760ee900daa56d17ac68a2b34b8cd375a50f3158e1d23",
         arm64_linux:  "119ebdc099541660bcb870cc90180ae083983a25034a3ce1622ee5dd0e951e1a",
         x86_64_linux: "8a6511b5de2d215ac7ca8f3d7627c4fbfbce0594b533e1bd66401ec73af64457"

  on_macos do
    app "Keyguard.app"

    zap trash: [
      "~/Library/Application Support/keyguard",
      "~/Library/Saved Application State/com.artemchep.keyguard.savedState",
    ]
  end
  on_linux do
    app_image "Keyguard-#{version.csv.first}-linux-#{arch}.AppImage", target: "Keyguard.AppImage"

    zap trash: [
      "~/.cache/keyguard",
      "~/.config/keyguard",
      "~/.local/share/keyguard",
      "~/Library/Preferences/com.artemchep.keyguard.plist",
    ]
  end

  url "https://github.com/AChep/keyguard-app/releases/download/r#{version.csv.second}/Keyguard-#{version.csv.first}-#{os}#{arch}.#{url_end}"
  name "Keyguard"
  desc "Client for the Bitwarden platform"
  homepage "https://github.com/AChep/keyguard-app"

  livecheck do
    url :url
    regex(%r{/r?(\d+(?:\.\d+)*)/Keyguard[._-](\d+(?:\.\d+)+)[._-]#{os}#{arch}\.#{url_end}$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end
end

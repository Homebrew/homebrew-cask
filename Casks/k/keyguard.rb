cask "keyguard" do
  arch arm:   on_system_conditional(macos: "apple", linux: "aarch64"),
       intel: on_system_conditional(macos: "intel", linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.5.0,20261024.1"
  sha256 arm:          "6524410393a55d0958b52a1319c58cc3e6fc60595bfeeb303a9d8f53d57bebe6",
         intel:        "c2fce2d8185469c727dee13346cb5c0f74aad7e768e3d215222f47c761e91c45",
         arm64_linux:  "225ad25af22921d8fd81868f4d755c55235d24e30e9c6d5a540f22f23fd31b93",
         x86_64_linux: "9dd82ac2d25cb92283132e7b6d98d69fcbd20514e57c9419e3773eaf018d0c9b"

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

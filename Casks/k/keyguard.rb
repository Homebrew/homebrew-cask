cask "keyguard" do
  arch arm:   on_system_conditional(macos: "apple", linux: "aarch64"),
       intel: on_system_conditional(macos: "intel", linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.6.1,20261028"
  sha256 arm:          "e5e2bd3899337abdd69b637fab37576a4d78b86acc82f84f19b2f4f10b4e3fbe",
         intel:        "f8a4e3c8777b08ef5b338e4655ed740f44d443d2cfee5cd2d9dd91b2c1523c85",
         arm64_linux:  "54318ca4178286259c5a34b2a4094126c5908635effa7aea395680d3a68b1ad7",
         x86_64_linux: "3688da4855f3a19752fccde798d7b9eb7a47eb3b5a734a5e0ecc4d1d8da98403"

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

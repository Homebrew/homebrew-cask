cask "keyguard" do
  arch arm:   on_system_conditional(macos: "apple", linux: "aarch64"),
       intel: on_system_conditional(macos: "intel", linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.8.2,20261116"
  sha256 arm:          "6ddb8e648a7253ee2eb63e49aed7f88b6dd31b2a61ab4fb1b706172e1591f310",
         intel:        "b78b8a8261b42dd868c5f71c448073c152c2775a6578a1faf08404cfe96d470c",
         arm64_linux:  "0eb771ca6cb9c10e34ae90ccb8b1cd6bed81b77ec052e2343a96cae6d1122004",
         x86_64_linux: "4e8bed24991b06c175bf9d709d039b7b088568568bb9db23b7434095779da898"

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

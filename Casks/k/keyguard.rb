cask "keyguard" do
  arch arm:   on_system_conditional(macos: "apple", linux: "aarch64"),
       intel: on_system_conditional(macos: "intel", linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.10.0,20261127"
  sha256 arm:          "9f68337f5d8b0d727de984dce62b194da6675e59ea327d577a0520e44ac0f72f",
         intel:        "a88c91430748cab4b8924a14371ed285bd2188e1e700f7a3cec67faa08760730",
         arm64_linux:  "9efbe40901178ac3b8b8108a79911a24a6e4c4a0bdd07794674fdf8b3f14052f",
         x86_64_linux: "5689866f8c1d6a905d57dac75c7104006951adcf4eeab8b533e83ce7c310645c"

  on_macos do
    app "Keyguard.app"

    zap trash: [
      "~/.keyguard",
      "~/Library/Application Support/keyguard",
      "~/Library/Preferences/com.artemchep.keyguard.plist",
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

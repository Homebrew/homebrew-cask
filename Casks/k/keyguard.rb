cask "keyguard" do
  arch arm:   on_system_conditional(macos: "apple", linux: "aarch64"),
       intel: on_system_conditional(macos: "intel", linux: "x86_64")
  os linux: "linux-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.6.0,20261027"
  sha256 arm:          "ab355462e04f0a6f404eacd6877a5c2878f40ea9edb865c990b1a783ab13ed43",
         intel:        "d13f9a0ec585e9447333db40aeed731176e9dafa1aefdc0bc8d4e88defed75d8",
         arm64_linux:  "5573e4b91ff226677b07cf46a3e99b60a677a7b62319e5eee7866e61791b8b27",
         x86_64_linux: "e954364a5bdea9b81e0cc40f78c372f93ce25ff290562ab6e62649ebf4aa1808"

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

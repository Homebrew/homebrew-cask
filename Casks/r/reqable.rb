cask "reqable" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.3.15"
  sha256 arm:          "4c961209f73b1fe6847ddafa08969eeeb913a7106cb0d0aeba1d2126b4a2f045",
         intel:        "e3389add510104765c5982e4e7ecf97b14c7b4e309039ee5e38119a45c875da7",
         x86_64_linux: "78767126f7981aa53f56b187cbcb1fc22e61985554a33bf5159cd1ae173aa3ed"

  on_macos do
    app "Reqable.app"

    uninstall_postflight_steps do
      delete_keychain_certificates "Reqable Proxy"
    end

    zap trash: [
      "~/Library/Application Support/com.reqable.macosx",
      "~/Library/Caches/Reqable",
      "~/Library/Preferences/com.reqable.macosx.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "reqable-app-linux-#{arch}.AppImage", target: "Reqable.AppImage"

    zap trash: "~/.local/share/com.reqable.linux"
  end

  url "https://github.com/reqable/reqable-app/releases/download/#{version}/reqable-app-#{os}-#{arch}.#{url_end}"
  name "Reqable"
  desc "Advanced API Debugging Proxy"
  homepage "https://reqable.com/"

  # Not every GitHub release provides a file for macOS/Linux
  # so we check multiple recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^reqable[._-]app[._-]#{os}[._-]#{arch}\.#{url_end}$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          release["tag_name"]&.[](/^v?(\d+(?:\.\d+)+)$/i, 1)
        end
      end.flatten
    end
  end

  auto_updates true
end

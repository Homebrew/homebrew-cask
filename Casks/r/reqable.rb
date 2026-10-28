cask "reqable" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.3.6"
  sha256 arm:          "8dc065d266623c6e7c455c5d46044b5312d4b3d3f87836d202069b9d729f06cd",
         intel:        "bd2cefb0c6b0a4ea3387d5e6a809436465e278318fb559782dcd357358c70e14",
         x86_64_linux: "af723cb6ff45d7f8c4d2ae4cfd176efdbcf4e8dde611f2f1f62d6de0aa390ced"

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

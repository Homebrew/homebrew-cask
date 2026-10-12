cask "reqable" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.3.1"
  sha256 arm:          "d02839bbe48271f1e72df724ccabc99c9000df772f5f5f88749aef61aad530eb",
         intel:        "64bf5d44f98209bc55e5f83e3a3459195cb74c630203727fcf3897ef4039046a",
         x86_64_linux: "bb8e1c80a30809fa0ba3ef2da282b7ce59ff71cc81d5984ba6faadd9939b8c12"

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

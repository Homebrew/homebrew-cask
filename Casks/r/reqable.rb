cask "reqable" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.3.0"
  sha256 arm:          "c624e0dc072c40b93cca31eb7a588fbcfa3b11e3a1925fb469d5010d50286bcc",
         intel:        "45ae6c06cce9f0d555c6e2442ac7e5b91dfc03d5d6f0d744b22641a976157f6c",
         x86_64_linux: "fed3bda61eacf6c7752131a68d6d65c07a4ea310f81793f38574a05ad8321d35"

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

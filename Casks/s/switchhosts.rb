cask "switchhosts" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.0.2"
  sha256 arm:          "1443343955edcee58b4c0618df622dc7f6790499ab3ac78b2a0f702f3869fba7",
         intel:        "1ffcf789665112700444b491748254fb3d5d1f9dba2c8716413f37ea2d124438",
         arm64_linux:  "4a07ba577ca633c8961b559469fa53eed033762f7c3bc04967b515bb4940aa20",
         x86_64_linux: "c411b5d7d91fe9d3af34efd6063f75f3d1d3ab4371c340c02d5a1082536fa7be"

  on_macos do
    app "SwitchHosts.app"

    zap trash: [
      "~/.SwitchHosts",
      "~/Library/Application Support/SwitchHosts",
      "~/Library/Preferences/SwitchHosts.plist",
      "~/Library/Saved Application State/SwitchHosts.savedState",
    ]
  end
  on_linux do
    app_image "SwitchHosts-#{version}-linux-#{arch}.AppImage", target: "SwitchHosts.AppImage"

    zap trash: [
      "~/.cache/net.oldj.switchhosts",
      "~/.config/net.oldj.switchhosts",
      "~/.local/share/net.oldj.switchhosts",
      "~/.SwitchHosts",
    ]
  end

  url "https://github.com/oldj/SwitchHosts/releases/download/v#{version}/SwitchHosts-#{version}-#{os}-#{arch}.#{url_end}"
  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://switchhosts.vercel.app/"

  livecheck do
    url :url
    regex(/^SwitchHosts[._-]v?(\d+(?:\.\d+)+)[._-]#{os}[._-]#{arch}\.#{url_end}$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end
end

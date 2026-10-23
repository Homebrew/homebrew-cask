cask "switchhosts" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "5.0.3"
  sha256 arm:          "dcc3feabcea1906941532150f13fd6d8a30e52d21d7dcccd6df65704ffc0792c",
         intel:        "8ca7c6b309cee80a30b076c713e8da25e0daf23c01b7bc57405807331e94bf31",
         arm64_linux:  "f313d7e431826034a20e564ecc41ff6ebf8eb262736dd51e251dc6c5ba53b6ab",
         x86_64_linux: "fa6b2ac5eed7163eed2f7a777b5294e30b651c7a3afc7dc367bbad6f471960f0"

  on_macos do
    app "SwitchHosts.app"

    zap trash: [
      "~/.SwitchHosts",
      "~/Library/Application Support/SwitchHosts",
      "~/Library/Caches/net.oldj.switchhosts",
      "~/Library/Logs/net.oldj.switchhosts",
      "~/Library/Preferences/SwitchHosts.plist",
      "~/Library/Saved Application State/SwitchHosts.savedState",
      "~/Library/WebKit/net.oldj.switchhosts",
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

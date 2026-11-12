cask "trae-cn" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "2.3.102387"
  sha256 arm:          "fd27a3bcbf5f3d1e498fbc09e6ef85b2b742742de7b4104b7ff8aa2e1db6592f",
         intel:        "2b7e4d4c76c39c35a7576b0a8ac1a08cf9c664c8b9441926488b8a798fcd3688",
         arm64_linux:  "c9d259c7e215ef570b98671dc5bc821bc6bd46c52f06a1b9afa9c5d2733d662d",
         x86_64_linux: "400cf82a46d17589f40fef21ee370064b793126c1d4ea6fc8c066772614896e3"

  on_macos do
    depends_on macos: :monterey

    app "Trae CN.app"

    uninstall launchctl: "cn.trae.ShipIt",
              quit:      "cn.trae.app"

    zap trash: [
      "~/.trae-cn",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/cn.trae.app.sfl*",
      "~/Library/Application Support/Trae CN",
      "~/Library/Caches/cn.trae.app",
      "~/Library/Caches/cn.trae.ShipIt",
      "~/Library/HTTPStorages/cn.trae.app",
      "~/Library/Preferences/ByHost/cn.trae.ShipIt.*.plist",
      "~/Library/Preferences/cn.trae.app.helper.plist",
      "~/Library/Preferences/cn.trae.app.plist",
      "~/Library/Saved Application State/cn.trae.app.savedState",
    ]
  end
  on_linux do
    binary "bin/trae-cn"
    bash_completion "#{staged_path}/resources/completions/bash/trae-cn"
    zsh_completion  "#{staged_path}/resources/completions/zsh/_trae-cn"

    zap trash: [
      "~/.config/Trae CN",
      "~/.local/share/Trae CN",
      "~/.trae-cn",
    ]
  end

  url "https://lf-cdn.trae.com.cn/obj/trae-com-cn/pkg/app/releases/stable/#{version}/#{os}/TRAE_CN-#{os}-#{arch}.#{url_end}"
  name "Trae CN"
  desc "Adaptive AI IDE"
  homepage "https://www.trae.com.cn/"

  livecheck do
    url "https://api.trae.ai/icube/api/v1/native/version/trae/cn/latest"
    regex(%r{/stable/v?(\d+(?:\.\d+)+)/#{os}/}i)
    strategy :json do |json, regex|
      json.dig("data", "manifest", os, "versions")&.map do |item|
        item["url"]&.[](regex, 1)
      end
    end
  end

  auto_updates true
end

cask "trae-cn" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "2.3.106768"
  sha256 arm:          "93c3fb2483631209d476105115ab9249fefae7cb357b6b945e0349bac845a391",
         intel:        "c50dab6436442e4216895f567818059afe093fa08d832b287f7d768e75d47cc6",
         arm64_linux:  "77eda7cc98d5cf9a7f3228041445d62a70739da84f51069f975b343472a42efe",
         x86_64_linux: "12c47adc62f63e950b152e936a1089ba6158db5de778230880a717c75f81dde7"

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

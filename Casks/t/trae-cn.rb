cask "trae-cn" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "2.3.101515"
  sha256 arm:          "6c041c21c92da32d6c863ab0054eaeb632e19be9895868b23070521ea44b9314",
         intel:        "18764b77e597b22bc3eccc105d3fed687be49d20870d635175b4db18fe006761",
         arm64_linux:  "69396c9838d15da3106b852a25f864b7ffbf94c4e53bf8cef7f34c3a49499fa9",
         x86_64_linux: "82ccad2ccf4037d92d616b9ea52c5757df2a43b3fc91178f66a303ab00712620"

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

cask "trae-cn" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.3.53679"
  sha256 arm:          "5b6cf1e4288edd1a00e9ebf1be7ad06e615b4452b5cf6bd11bc2042991a66cca",
         intel:        "9086f37155ab0813d9e276134f2ccefeb1b7f879d7e16c090e854ce9d24288a7",
         arm64_linux:  "54f68a005887b38a1ebb731fdd58dbc6115db6d0ca3712161e0e1934eecc4158",
         x86_64_linux: "bdc62ba1f5e89bd396e629b0252670c587131667c4012220bffd6995ae79dfa9"

  url_end = on_system_conditional linux: "tar.gz", macos: "dmg"

  url "https://lf-cdn.trae.com.cn/obj/trae-com-cn/pkg/app/releases/stable/#{version}/#{os}/Trae_CN-#{os}-#{arch}.#{url_end}"
  name "Trae CN"
  desc "Adaptive AI IDE"
  homepage "https://www.trae.com.cn/"

  livecheck do
    url "https://api.trae.ai/icube/api/v1/native/version/trae/cn/latest"
    strategy :json do |json|
      json.dig("data", "manifest", os, "version")
    end
  end

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

  auto_updates true
end

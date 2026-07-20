cask "trae-cn" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "2.3.56916"
  sha256 arm:          "ca9948fd3824bcb156b5a3973fdc31a4a09a5f6c2397e48d9cdbfbfb2cc68060",
         intel:        "dd7eceeeb0e1aafa0b71a2688d7753855e5a4cec33a8e0d3031285543c37a471",
         arm64_linux:  "95f945328f9f57c1e4e08efa96b5b3089dd0f3095d274d666ba19f0a7068ffa7",
         x86_64_linux: "5cc025421213a013af4f5fb831d89de2c21fa4608793a5f62b42f576c70e56b1"

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

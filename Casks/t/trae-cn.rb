cask "trae-cn" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "2.3.108162"
  sha256 arm:          "e72ac6f7d9a515472d64cc23c295cc33c008573b177375c32ef05782fd38ef81",
         intel:        "92571efc391c5cf7265dd77937f14fdf3559fc7a86471a59f505564b97749a90",
         arm64_linux:  "3684ba50da38517278675f196463dba5c75265cbbd21d95f5f36167c02edb422",
         x86_64_linux: "3e890e352fb2ab1dba6148a7c52cae2b315a9481e0c782d9680f7e89d1b7691d"

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

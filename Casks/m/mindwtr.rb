cask "mindwtr" do
  arch arm: "_aarch64", intel: on_system_conditional(macos: "_x64", linux: "-x86_64")
  os macos: "mindwtr_", linux: "Mindwtr-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.4"
  sha256 arm:          "e38f1c5bebf16b73fcca500cf0c14fb7676766c91766e7aee61acf1d130fe38a",
         intel:        "e840077152345ff312884b7745f1b2fdf3ab4b020e870a96b60980889c9233a3",
         x86_64_linux: "0d8ceed9134b354bb949d997df4a475aae6e8b564aedc9790ca9cf236d692c69"

  on_macos do
    app "Mindwtr.app"

    zap trash: [
      "~/Library/Application Scripts/5X9JC5PL7T.tech.dongdongbh.mindwtr",
      "~/Library/Application Scripts/tech.dongdongbh.mindwtr.MindwtrWidgets",
      "~/Library/Application Support/mindwtr",
      "~/Library/Application Support/tech.dongdongbh.mindwtr",
      "~/Library/Caches/tech.dongdongbh.mindwtr",
      "~/Library/Containers/tech.dongdongbh.mindwtr.MindwtrWidgets",
      "~/Library/Group Containers/5X9JC5PL7T.tech.dongdongbh.mindwtr",
      "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
      "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
      "~/Library/WebKit/tech.dongdongbh.mindwtr",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Mindwtr-#{version}-x86_64.AppImage", target: "Mindwtr.AppImage"

    zap trash: [
      "~/.cache/tech.dongdongbh.mindwtr",
      "~/.config/mindwtr",
      "~/.config/tech.dongdongbh.mindwtr",
      "~/.local/share/mindwtr",
      "~/.local/share/tech.dongdongbh.mindwtr",
    ]
  end

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/#{os}#{version}#{arch}.#{url_end}"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"
end

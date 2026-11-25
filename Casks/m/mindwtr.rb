cask "mindwtr" do
  arch arm: "_aarch64", intel: on_system_conditional(macos: "_x64", linux: "-x86_64")
  os macos: "mindwtr_", linux: "Mindwtr-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.9"
  sha256 arm:          "c80b5d2dd0f73c04cf604020dacd48237b34f053531133e3fc2b019091331464",
         intel:        "3a77cf94dda97c459adab7d7da44aec2095921c6ec457765edcb4033bbe5433b",
         x86_64_linux: "db32fd0a51e72820140f1192f5ec2902a917d1fcf552498e998d4e88025805a9"

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

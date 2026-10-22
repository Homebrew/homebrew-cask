cask "mindwtr" do
  arch arm: "_aarch64", intel: on_system_conditional(macos: "_x64", linux: "-x86_64")
  os macos: "mindwtr_", linux: "Mindwtr-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.7"
  sha256 arm:          "d718523022a2d8b0e3fc917a315c96f10107134ac174812822bc40faa7998ab0",
         intel:        "72fe7a2c7375ce557558b822137ce750a380585968163e3d36ff0dbf92cbc922",
         x86_64_linux: "a1b217516158ead28f0b1a440b27c59fa0e7257e61219fdedbc14f32bdcf9950"

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

cask "mindwtr" do
  arch arm: "_aarch64", intel: on_system_conditional(macos: "_x64", linux: "-x86_64")
  os macos: "mindwtr_", linux: "Mindwtr-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.5"
  sha256 arm:          "8aba1ed312252f1e1c442a898f72123113175f8703959ceaaadbc20be4a619a4",
         intel:        "dd72eaa0d523f70e4823d4f3fb6362563fa33a6b33ccf128679c672deacca42f",
         x86_64_linux: "371002cf39624237083bee91d98b94391d32278841dbc832f6da4112f14df4f6"

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

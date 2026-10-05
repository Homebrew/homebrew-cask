cask "mindwtr" do
  arch arm: "_aarch64", intel: on_system_conditional(macos: "_x64", linux: "-x86_64")
  os macos: "mindwtr_", linux: "Mindwtr-"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.3.3"
  sha256 arm:          "c80cd5a97995774c8af6d8c71a4580c32a82906ec6e65391ea7f2d2c2df41096",
         intel:        "b0706fbaede875afa378a369e855af29978b8ed37ddf4d5e3019a169b5cdff9e",
         x86_64_linux: "68584e72e163ff44453a355a38a6dab4f21ff6ae17d7f5e265dd269fce0d1825"

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

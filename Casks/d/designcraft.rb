cask "designcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.17.0"
  sha256 arm:          "d89d1bb101b477cb521fd13551f7bac2a90662ed83e5ccf45571e967834e4327",
         intel:        "d89d1bb101b477cb521fd13551f7bac2a90662ed83e5ccf45571e967834e4327",
         arm64_linux:  "8d7f41d66ba0d17618e450e8b2580ede922cdfda4fa92f9d4239a57da5f561bc",
         x86_64_linux: "4451904013117f7ff2060a9710b0ce397d1016451e4b984cc955dc0547eb5621"

  on_macos do
    app "DesignCraft.app"

    zap trash: "~/Library/Application Support/DesignCraft"
  end
  on_linux do
    app_image "designcraft-#{version}-linux-#{arch}.AppImage", target: "DesignCraft.AppImage"

    zap trash: [
      "~/.config/designcraft",
      "~/.local/share/designcraft",
    ]
  end

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "DesignCraft"
  desc "Page layout and publishing tool"
  homepage "https://getartcraft.com/apps/designcraft"
end

cask "handy" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "bdc41359af0b8b3014f14c44ea3fe85b1e45387bdad261bd4a2cfc92f7f35496",
         intel:        "210cc45fa66c899dcb8848df807779c7a808fe8e6dd863b9d5ed448a8acd7d3a",
         arm64_linux:  "e76ee45a404009319046878e314e94a7f431b3808179b3b05a410477154d8aa6",
         x86_64_linux: "20661c16b0b9e1b7dc5020be463f2b17f654bfeaf0ba1d7032bc4b77b268ec6c"

  on_macos do
    depends_on macos: :ventura

    app "Handy.app"

    zap trash: [
      "~/Library/Application Support/com.pais.handy",
      "~/Library/Caches/com.pais.handy",
      "~/Library/LaunchAgents/Handy.plist",
      "~/Library/Logs/com.pais.handy",
      "~/Library/WebKit/com.pais.handy",
    ]
  end
  on_linux do
    app_image "Handy_#{version}_#{arch}.AppImage", target: "Handy.AppImage"

    zap trash: [
      "~/.cache/com.pais.handy",
      "~/.config/com.pais.handy",
      "~/.local/share/com.pais.handy",
    ]
  end

  url "https://github.com/cjpais/Handy/releases/download/v#{version}/Handy_#{version}_#{arch}.#{os}"
  name "Handy"
  desc "Speech to text application"
  homepage "https://handy.computer/"

  auto_updates true
end

cask "handy" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.9.8"
  sha256 arm:          "81ac05aaaf4fafa62826bb40c5cf0bc0c813fb6fc8255497480e762620779417",
         intel:        "03b3edb44eef448187643c40af8626202881374f952c9cc3039848ff6f9c1b1b",
         arm64_linux:  "0b6d2194cc33d6c6747558c42b4b2e820b3335d3a8b18b66b44d1c3d45fa9391",
         x86_64_linux: "d683dc96762f9a47975045ab480392d33a5b491968fb336dcac47e2f65e7184f"

  on_macos do
    depends_on macos: :ventura

    app "Handy.app"

    zap trash: [
      "~/Library/Application Support/com.pais.handy",
      "~/Library/Caches/com.pais.handy",
      "~/Library/LaunchAgents/Handy.plist",
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

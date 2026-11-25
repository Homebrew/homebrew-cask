cask "handy" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.10.2"
  sha256 arm:          "b8b893fbf9e8262abb0e363cb0ac6715cc69eac2fd6ffd8c0785278083a0e3ca",
         intel:        "1a1bdfeacb93bcb91209ee4da8a68248cbc8d8b0168824075c8a02866b079db4",
         arm64_linux:  "60e2b83bc02ae05e691bfae2d3cbf0b063fc64ff45ff6d212c0ca0a1ee134965",
         x86_64_linux: "17c5f1a4a33f9c4c5c234a084cc0aaf766f3a5b62662e02d70e51161800ace17"

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

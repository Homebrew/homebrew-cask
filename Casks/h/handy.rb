cask "handy" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.9.6"
  sha256 arm:          "a961b35724f6c860bcdcece1f1d77c21343ad2156525f8800ca968a1aad4d854",
         intel:        "f47b184b3052fa6a994e6cae1619b6340cea0e8742e616042444908649659d08",
         arm64_linux:  "d0f2b7df715148625efb5b030a1855b272165634a0bdb1835593dcdbf2def67a",
         x86_64_linux: "c652f69572cc846302d76076198a07b4d62b5f7b548285933527584a3c62f4fd"

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

cask "handy" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.9.7"
  sha256 arm:          "f8a2ed7bbc8f6e814ae620609a184212fc9f49dac19a8921bd80ab0f4bd5783c",
         intel:        "b857810636d27a7c2f2448b9af6c203565b6fcd1c7d9f1bf96127b2f3e62ccd8",
         arm64_linux:  "df8055001634dcf83860239040b012f4f5345dce1e7f98009555edb1019b06c4",
         x86_64_linux: "e0625120b5a5c1d45e1e536b9d20f5220e7558e50c701e72e014f99c948e363a"

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

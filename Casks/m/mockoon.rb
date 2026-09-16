cask "mockoon" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"
  name_start = on_system_conditional macos: "mockoon.setup.", linux: "mockoon-"

  version "9.9.0"
  sha256 arm:          "d1bd3440620694fa2ac433a1c0723bbfc79b3ba5d8884de3a82eee419b54a826",
         intel:        "cd0c048a932cd5f3f22ba914e52e7c87471f0fbb48c3e9f06cde8e7e616b53a2",
         arm64_linux:  "2bee33c2ad34c3a80bb1d7789b3860cca004c504324b9b15095a59e4acc5bcd5",
         x86_64_linux: "e2e7b7aadd5c30b0dafcbcc8011bd0efe19c51dd8a59d45a97e37ece8ecf8eb5"

  on_macos do
    depends_on macos: :ventura

    app "Mockoon.app"

    zap trash: [
      "~/Library/Application Support/mockoon",
      "~/Library/Logs/Mockoon",
      "~/Library/Preferences/com.mockoon.app.plist",
      "~/Library/Saved Application State/com.mockoon.app.savedState",
    ]
  end
  on_linux do
    app_image "mockoon-#{version}.#{arch}.AppImage", target: "Mockoon.AppImage"

    zap trash: "~/.config/mockoon"
  end

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/#{name_start}#{version}.#{arch}.#{os}"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url "https://api.mockoon.com/releases/desktop/stable.json"
    strategy :json do |json|
      json["tag"]
    end
  end

  auto_updates true
end

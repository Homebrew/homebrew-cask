cask "mockoon" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"
  name_start = on_system_conditional macos: "mockoon.setup.", linux: "mockoon-"

  version "9.10.0"
  sha256 arm:          "66579745c6217c6cc1ec51142dd893ffd74263b0467ca222338deddb77bcf721",
         intel:        "8187a29a7971ecf42e0bd08cfb84831db7de8df77bcddeb9ee14fd0b831215d3",
         arm64_linux:  "8391800bfa145e69fcaad76f9ef19d26fa5be9ea94ffcc4e1a23a79aa1564c93",
         x86_64_linux: "596c03a7c9aa8a4649d9aad7267cd566a4164f795863fb82024cc968520ea412"

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

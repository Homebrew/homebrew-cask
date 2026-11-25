cask "t3-code" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")

  version "0.1.12"
  sha256 arm:          "4613582f18d0c8ba60164e5d5d779bcebe4bb6cf7824b75fe94ecfe00a21f9bf",
         intel:        "f31c4a3fcbed88a1e9fc252f0b117c814052bb4db720ab975725a64a0894b8f9",
         arm64_linux:  "6a004d5da562ec25d147ddf4ae577ed66e3d052b68954e455a178297a83bd8fa",
         x86_64_linux: "66b91551571df6d29b55cb590295edf411cff96c95a8feb3f41c3ca595d722e2"

  on_macos do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{version}-#{arch}.dmg"

    depends_on macos: :ventura

    app "T3 Code (Beta).app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.t3tools.t3code.sfl*",
      "~/Library/Application Support/T3 Code (Alpha)",
      "~/Library/Application Support/t3code",
      "~/Library/Application Support/t3code-v2",
      "~/Library/Caches/com.t3tools.t3code",
      "~/Library/Caches/t3code-updater",
      "~/Library/HTTPStorages/com.t3tools.t3code",
      "~/Library/Preferences/com.t3tools.t3code.plist",
      "~/Library/Saved Application State/com.t3tools.t3code.savedState",
    ]
  end
  on_linux do
    url "https://github.com/pingdotgg/t3code/releases/download/v#{version}/T3-Code-#{arch}.AppImage"

    conflicts_with cask: "t3-code@nightly"

    app_image "T3-Code-#{arch}.AppImage", target: "T3 Code.AppImage"

    zap trash: [
      "~/.cache/t3code-updater",
      "~/.config/T3 Code (Alpha)",
      "~/.config/t3code",
      "~/.config/t3code-v2",
      "~/.local/share/applications/com.t3tools.T3Code.desktop",
      "~/.local/share/icons/com.t3tools.T3Code.desktop.png",
      "~/.local/share/icons/hicolor/256x256/apps/com.t3tools.T3Code.png",
      "~/.local/share/icons/hicolor/256x256/apps/com.t3tools.t3code.png",
    ]
  end

  name "T3 Code"
  desc "Minimal GUI for AI code agents"
  homepage "https://t3.codes/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end

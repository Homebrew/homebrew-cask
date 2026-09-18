cask "blockbench" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  url_arch = on_system_conditional macos: "#{arch}_"

  version "5.2.0"
  sha256 arm:          "9f9fa9813b2845390b5c056e901f8c0c3a19cc5e78918bd2614f76b330424f25",
         intel:        "190804d59973a7f297b1444419386dfed122155b242ae217be962b2707de328b",
         x86_64_linux: "75bd8c16b1caf520f5b14847e9e6c2644642abdd68bba631b35a150d2e0f08c4"

  on_macos do
    depends_on macos: :monterey

    app "Blockbench.app"

    zap trash: [
      "~/Library/Application Support/Blockbench",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/blockbench.sfl*",
      "~/Library/Preferences/blockbench.plist",
      "~/Library/Saved Application State/blockbench.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Blockbench_#{version}.AppImage", target: "Blockbench.AppImage"
  end

  url "https://github.com/JannisX11/blockbench/releases/download/v#{version}/Blockbench_#{url_arch}#{version}.#{url_end}"
  name "Blockbench"
  desc "3D model editor for boxy models and pixel art textures"
  homepage "https://www.blockbench.net/"

  livecheck do
    url :url
    strategy :github_latest
  end
end

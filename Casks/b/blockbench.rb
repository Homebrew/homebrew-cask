cask "blockbench" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  url_arch = on_system_conditional macos: "#{arch}_"

  version "5.2.1"
  sha256 arm:          "20fd51a18c7a757d9cb03bb0b89c99874d2d5bdbae733817a7877b15043aa78c",
         intel:        "c737134ec4e825f4ed2e6ade5ee553ffcb375fb6541d99b7dfff06298cd98bcc",
         x86_64_linux: "abc3980ad1f1308a2352f7f920c57de8ff61fc2433ea8a64b81aa504c97987bf"

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

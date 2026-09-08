cask "blockbench" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"
  url_arch = on_system_conditional macos: "#{arch}_"

  version "5.1.6"

  on_macos do
    sha256 arm:   "84d3f632d8c35c40174a05e0b52f035919722cd1b5175228751a09e550a58529",
           intel: "c9d1a31820f0bea0c9187c679c45d81ac62f54aa73b7b5823120d4d859cf71c1"

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
    sha256 "c6dd92036f3c10495df53911a74e5b00a1d557ea13e506084177ef55a5cd7c0e"

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

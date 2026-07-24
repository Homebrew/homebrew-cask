cask "iloader" do
  os macos: "darwin", linux: "linux"

  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2.2.7"

  artifact = on_system_conditional linux: "iloader-#{os}-#{arch}.AppImage",
                                   macos: "iloader-#{os}-universal.dmg"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/#{artifact}",
      verified: "github.com/nab138/iloader/"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    sha256 "f01c5f52cdc6e29b6cdb90072ddee092863923bcfa5575c3860a21302c27d382"

    auto_updates true
    app "iloader.app"

    zap trash: "~/Library/Application Support/me.nabdev.iloader"
  end

  on_linux do
    sha256 arm64_linux:  "d729877a2f0bb3b060aac65d106a50c92b59367cd50229774f7845bce2dd19fc",
           x86_64_linux: "16e3f1101b612bb8adaa680cd51fb8bc229ca27c68d37c46fbdff6ad6251bb4e"

    app_image artifact, target: "iloader.AppImage"
  end
end

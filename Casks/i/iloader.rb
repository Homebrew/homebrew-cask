cask "iloader" do
  os macos: "darwin", linux: "linux"

  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2.2.6"

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
    sha256 "8494c0221b5fd3efbe7100637ecbeaddfe1bb5bf29de90b01a8b9de4a580cf1e"

    auto_updates true
    app "iloader.app"

    zap trash: "~/Library/Application Support/me.nabdev.iloader"
  end

  on_linux do
    sha256 arm64_linux:  "58141b686830b3f45480278549a7e7d865c95e9c6d2135c45b7ca96ed00a1f82",
           x86_64_linux: "acbb0355772df6116eddcc83bf98bb3505fcdb4583c4c7c510c7e250f1ab3a35"

    app_image artifact, target: "iloader.AppImage"
  end
end

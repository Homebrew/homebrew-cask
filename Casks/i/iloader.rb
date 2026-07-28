cask "iloader" do
  os macos: "darwin", linux: "linux"

  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "2.2.9"

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
    sha256 "83c9608a323d354400a2451aaef764ec6a0fe5632155d72d498b3b953f630e5e"

    auto_updates true
    app "iloader.app"

    zap trash: [
      "~/Library/Application Support/me.nabdev.iloader",
      "~/Library/Caches/me.nabdev.iloader",
      "~/Library/WebKit/me.nabdev.iloader",
    ]
  end

  on_linux do
    sha256 arm64_linux:  "d35df0f3bdfee88adfc333ae9721967986f1fd6287c0eef59fef0f1aacd87229",
           x86_64_linux: "b775b9edd5c09a3829d9530834368f0b44d5fbc88392a08d9260cb76d0a5b09f"

    app_image artifact, target: "iloader.AppImage"
  end
end

# frozen_string_literal: true

cask "podsync-app" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.1.0-alpha.3"
  sha256 arm:          "6267d13d48df7ec2686363bc9830d9fecdfe338e6993a033bf3690ef6efd0cee",
         intel:        "1da59e0ee0d8a8c004f48e74f90dd2258c17f3c16d2e16355560d46517728963",
         x86_64_linux: "42b5492501963731a0b651858b699c67f29b9f127be5f8f09346c287e2bcd4a6"

  on_macos do
    depends_on macos: :big_sur

    app "PodSync.app"

    postflight do
      system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/PodSync.app"]
    end

    zap trash: [
      "~/Library/Application Support/com.podsync.desktop",
      "~/Library/Caches/com.podsync.desktop",
      "~/Library/Preferences/com.podsync.desktop.plist",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "PodSync_#{version}_amd64.AppImage", target: "PodSync.AppImage"
  end

  url "https://github.com/thinkingsapiens/podsync/releases/download/v#{version}/PodSync_#{version}_#{arch}.#{os}"
  name "PodSync"
  desc "Lean, native podcast client"
  homepage "https://thinkingsapiens.github.io/podsync/"

  livecheck do
    url :url
    regex(/^v?(\d+\.\d+\.\d+(?:-\w+\.\d+)?)$/i)
  end
end

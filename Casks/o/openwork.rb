cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.17"
  sha256 arm:          "eb6ab01e6cd94279b627b666175c3a978d353c11f55a0d96b7d72c9955b0eb2c",
         intel:        "8bd9f97206d18c74c5b1e02aa7e55c10c6cdcd24e05d576bbda90351b608adaa",
         arm64_linux:  "7c6c0774cd7f22ed4c195d0546d2d64d1d15f3edf88fbad55ecb293ea027fc5c",
         x86_64_linux: "ffd02552d58777a5bf899e04e3b74fa77d1875c8fc4abf71c88cebd79e19fe69"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    zap trash: [
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end

cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.18.3"
  sha256 arm:          "41a492016c034e1f71a7801361efd4743ae552b2bfe32e60838ece67c5e7bf6f",
         intel:        "794c9acc43c80663fd8cfaaa585950c9ca274a75e9811ba4b7d58430a9435ba6",
         arm64_linux:  "d2d2c0f39c7dc65a1d11d2eceabdc6a428c49e7907d6359d16dd068af973275b",
         x86_64_linux: "8a0f753a9ba3842d64a0f3cb85f1b8e3a70caf9529cd4baf1cbd22dc0b8c3358"

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

    uninstall quit: "com.differentai.openwork"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.differentai.openwork.sfl*",
      "~/Library/Application Support/com.differentai.openwork",
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
      "~/Library/Preferences/com.differentai.openwork.ShipIt.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end

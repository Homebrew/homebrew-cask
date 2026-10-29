cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.34"
  sha256 arm:          "9ddfbdc9388d17239804f877f4deb86bd7f0fc93fba34baba02fdec716ce851c",
         intel:        "fe63ea0848bf1172ea033c532b93e119b96d38d9549e34c7b152a7422f251fa5",
         arm64_linux:  "a6037201cddfcd717ef865c943e16283998a1b3d9ae0923156fa087942ded3b6",
         x86_64_linux: "d70cfd1bdd256b81d450e248e2ecc3d3a724740a187c11bcbd1d22a92d2a7fea"

  on_macos do
    auto_updates true
    depends_on macos: :sequoia

    app "Anarlog.app"

    uninstall quit: "com.hyprnote.stable"

    zap trash: [
      "~/.local/bin/.anarlog-cli",
      "~/.local/bin/anarlog",
      "~/Library/Application Support/anarlog",
      "~/Library/Application Support/com.hyprnote.stable",
      "~/Library/Caches/com.hyprnote.stable",
      "~/Library/HTTPStorages/com.hyprnote.stable",
      "~/Library/Logs/com.hyprnote.stable",
      "~/Library/Preferences/com.hyprnote.stable.plist",
      "~/Library/Saved Application State/com.hyprnote.stable.savedState",
      "~/Library/WebKit/com.hyprnote.stable",
    ]
  end
  on_linux do
    app_image "anarlog-linux-#{arch}.AppImage", target: "Anarlog.AppImage"
  end

  url "https://github.com/fastrepl/anarlog/releases/download/desktop_v#{version}/anarlog-#{os}-#{arch}.#{url_end}"
  name "Anarlog"
  desc "AI notepad for meetings"
  homepage "https://anarlog.so/"

  livecheck do
    url :url
    regex(/^desktop[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end

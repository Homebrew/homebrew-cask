cask "anarlog" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.4.14"
  sha256 arm:          "02df00f70561c8b6a14dcec09734b3c3804ae07329312f97deb75df419d56f53",
         intel:        "00e7d5cfb923a51678077f1ba78df22438ece760d9072031a5d79caf4645bd49",
         arm64_linux:  "caf31ed70d55b5eed07ca56a8d0f27f509b445d3453052e4b992406c2507d7d1",
         x86_64_linux: "27317ebd75209dc65c03429d6ab7a7b9d4dcf6158642b4a7b0134a04fb1818c8"

  on_macos do
    auto_updates true
    depends_on macos: :sequoia

    app "Anarlog.app"

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

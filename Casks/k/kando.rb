cask "kando" do
  arch arm:   on_system_conditional(macos: "arm64", linux: "aarch64"),
       intel: on_system_conditional(macos: "x64", linux: "x86_64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "3.0.0"
  sha256 arm:          "4b6542e0e6191b742603f3577c599f137b127520b465289c522b23d1d31f71c0",
         intel:        "42d36215b259e7e928cfc24aa1a9793230867f78b93028c2ef375ff234572879",
         arm64_linux:  "a8dd80bcd0b64f2b8882a61f97b37f3de216a5872c721a22721e0fc49223f45c",
         x86_64_linux: "cd91caebc7e027fec8f4ad00c5451879858095967676a9604dc196e420a2687d"

  on_macos do
    depends_on macos: :monterey

    app "Kando.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.kando.sfl*",
      "~/Library/Application Support/Kando",
      "~/Library/Preferences/com.electron.kando.plist",
    ]
  end
  on_linux do
    app_image "Kando-#{version}-#{arch}.AppImage", target: "Kando.AppImage"

    zap trash: "~/.config/kando"
  end

  url "https://github.com/kando-menu/kando/releases/download/v#{version}/Kando-#{version}-#{arch}.#{url_end}"
  name "Kando"
  desc "Pie menu"
  homepage "https://kando.menu/"

  livecheck do
    url :url
    strategy :github_latest
  end
end

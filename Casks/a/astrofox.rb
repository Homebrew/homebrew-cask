cask "astrofox" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.0.0"
  sha256 arm:          "f6678d95fe67cb23b1e5ad7bd76a20f835c70ff7c79db1986a81e510e645794f",
         intel:        "b66618de751c51ebfe3e7df7c599dfe17476ce6c6dfced49dc83649723a8610d",
         x86_64_linux: "d140b77830b91828c43447abcafd2b7b57d4b4aa8192f3df0eb6853cc7e9c58e"

  on_macos do
    depends_on macos: :monterey

    app "Astrofox.app"

    zap trash: [
      "~/Library/Application Support/Astrofox",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.astrofox.app.sfl*",
      "~/Library/Preferences/io.astrofox.app.plist",
      "~/Library/Saved Application State/io.astrofox.app.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Astrofox-linux-x86_64.AppImage", target: "Astrofox.AppImage"
  end

  url "https://github.com/astrofox-io/astrofox/releases/download/v#{version}/Astrofox-#{os}-#{arch}.#{url_end}"
  name "Astrofox"
  desc "Motion graphics program for music visualisations"
  homepage "https://astrofox.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end

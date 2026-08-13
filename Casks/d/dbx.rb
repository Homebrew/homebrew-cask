cask "dbx" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.5.83"
  sha256 arm:          "a9e77774f505a21d257dddded5dcf5d590c4e37c189bfd3b6ac7f38fffe384d6",
         intel:        "2eff7e5d52d039a70189dcc0dd2b2797d953d997774404a0e3024f18548ecb97",
         arm64_linux:  "091a49b77a41908df42731a2235c76060b689882db02c1a7c25802c6e6b9d859",
         x86_64_linux: "556699951a15e5afd06d356b9541590a0a8122dcb69e0e94702931e7b04f8ad7"

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
      "~/Library/WebKit/com.dbx.app",
    ]
  end
  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}.#{os}"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end
end

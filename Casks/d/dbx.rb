cask "dbx" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.6.42"
  sha256 arm:          "f19b32de46ed7670e9974d7414b949868ca5128aa290df9ebbbc1790f0861012",
         intel:        "968d53bb180171ae3ddac89cf710b213598ec003044e862bb027663c3b394c3f",
         arm64_linux:  "c946341992ad88cde475a2d48f7fbdc48d850956d4ea7c03f31a8e260418198e",
         x86_64_linux: "199d08eb9ea202d894a0699e828f8ec90ca092a1dbe8146e988bcdfe2685e124"

  on_macos do
    auto_updates true

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

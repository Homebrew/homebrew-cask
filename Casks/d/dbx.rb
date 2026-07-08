cask "dbx" do
  on_macos do
    arch arm: "aarch64", intel: "x64"
  end
  on_linux do
    arch arm: "aarch64", intel: "amd64"
  end

  version "0.5.50"
  sha256 arm:          "0c4300cef84fb2b5efcb7cf1ec6e0ddb4e09604067744b084809b3f176ede6b8",
         intel:        "2ba5b5fe6a9e5dd8b7872c539f7d7ce3b1acb3c6791e8b2f6e7e7acadc0919da",
         arm64_linux:  "5a29ed5655e42b71efceb902c618da6062e7edc41a7ef28b79fe3ffa2baeab4f",
         x86_64_linux: "6d3783de820e960931db323ee79aabebb6ebf0e40a324c56bd35fd5b6a23c813"

  url_end = on_system_conditional macos: ".dmg", linux: ".AppImage"

  url "https://github.com/t8y2/dbx/releases/download/v#{version}/DBX_#{version}_#{arch}#{url_end}",
      verified: "github.com/t8y2/dbx/"
  name "DBX"
  desc "Database management tool"
  homepage "https://dbxio.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "DBX.app"

    zap trash: [
      "~/Library/Application Support/com.dbx.app",
      "~/Library/Caches/com.dbx.app",
      "~/Library/Logs/com.dbx.app",
      "~/Library/Preferences/com.dbx.app.plist",
    ]
  end

  on_linux do
    app_image "DBX_#{version}_#{arch}.AppImage", target: "DBX.AppImage"
  end
end

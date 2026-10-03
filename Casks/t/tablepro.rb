cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.77.1"
  sha256 arm:   "00a1ece89a4abb3750a04228fa03e631f79220dadfc7527c824b17d92f27e398",
         intel: "d3269286d8f3d0ff67b2b8f3c2eef9db6a96324ba805610da20acf953e61d321"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg"
  name "TablePro"
  desc "Native database client for many database types"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/TableProApp/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "TablePro.app"

  uninstall quit: "com.TablePro"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.tablepro.sfl*",
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end

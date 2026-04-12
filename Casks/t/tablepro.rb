cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.31.2"
  sha256 arm:   "91c7de0866fd8ed4a12cd0c881dd8eaad4580f999c7704a2fd2d8f2aa4816696",
         intel: "59744475565eb4039cf1cfb2d710d99282ac13c4dfbfa95cf65750099a2c3a1b"

  url "https://github.com/TableProApp/TablePro/releases/download/v#{version}/TablePro-#{version}-#{arch}.dmg",
      verified: "github.com/TableProApp/TablePro/"
  name "TablePro"
  desc "Native database client for many database types"
  homepage "https://tablepro.app/"

  livecheck do
    url "https://raw.githubusercontent.com/TableProApp/TablePro/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end

cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.30.1"
  sha256 arm:   "04dc9a99af00671f77467963a26e34f46ec607ec9667fb34a409519d378b6341",
         intel: "c6fb4f6785c374a624cfc55978b27e92dbd5f25b36881437dac86ed89120611b"

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

cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.57.1"
  sha256 arm:   "ddc01b5a19200a69b64758f6c1accd5652e7d55cdb82f97ba15646f4d67f02f1",
         intel: "e360a21f4a07bdfe61d3114713a08a17da3c5eea4a29e3670b9e1c4b065da7c6"

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
  depends_on macos: :sonoma

  app "TablePro.app"

  zap trash: [
    "~/Library/Application Support/TablePro",
    "~/Library/Caches/com.TablePro",
    "~/Library/HTTPStorages/com.TablePro",
    "~/Library/Preferences/com.TablePro.plist",
  ]
end

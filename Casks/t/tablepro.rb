cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.2"
  sha256 arm:   "22bfd6d215e7d6659a27d1ec7ce3cd2ffe4375875474d4d0b09d24d045eba9b0",
         intel: "d5b713faa5ab7b84424f11cbca93cf28e1fdc01730c7895f343cf298d8150afd"

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

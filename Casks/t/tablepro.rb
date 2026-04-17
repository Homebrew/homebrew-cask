cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.32.1"
  sha256 arm:   "6c05611df7df4847453d1e84a36aaf836eadc96f2d4ba19ee281de50cfc1fb8a",
         intel: "3bf3de8b69b637c9d0e27af4f5bfb40f865dd5233ed66ff05aca4c9a769146aa"

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

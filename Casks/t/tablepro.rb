cask "tablepro" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.3"
  sha256 arm:   "4fe4c1257dc5196f7196c1c349cf52bf872abe55fb216c6df8e0d1a0ac82d61c",
         intel: "1bbe6b536d66e077e13070ed7966cc85f2274aa20a7cc07f9f8732fc13991be9"

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

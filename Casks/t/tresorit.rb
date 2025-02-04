cask "tresorit" do
  version "3.5.3197.4450"
  sha256 :no_check

  url "https://installer.tresorit.com/Tresorit.dmg"
  name "Tresorit"
  desc "Client for the Tresorit cloud storage service"
  homepage "https://tresorit.com/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["x-ms-meta-version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Tresorit.app"

  uninstall login_item: "Tresorit"

  zap trash: [
    "~/Library/Application Support/Tresorit",
    "~/Library/Preferences/com.tresorit.mac.plist",
  ]
end

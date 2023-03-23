cask "catoclient" do
  version "5.3.0.230"
  sha256 "627f9ce79d45d0150cb70002b1ede29e673ff9bb6c629dee533b9954653f5a90"

  url "https://clients.catonetworks.com/macos/#{version}/CatoClient.pkg"
  name "Cato Client"
  desc "VPN client"
  homepage "https://www.catonetworks.com/"

  livecheck do
    url "https://clientdownload.catonetworks.com/public/clients/CatoClient.pkg"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  pkg "CatoClient.pkg"

  uninstall quit:    "com.catonetworks.mac.CatoClient",
            pkgutil: "com.catonetworks.pkg.CatoClient"

  zap trash: [
    "~/Library/Application Scripts/CKGSB8CH43.com.catonetworks.mac.CatoClient",
    "~/Library/Application Scripts/com.catonetworks.mac.CatoClient.CatoClientExtension",
    "~/Library/Application Scripts/com.catonetworks.mac.CatoClient",
    "~/Library/Containers/com.catonetworks.mac.CatoClient.CatoClientExtension",
    "~/Library/Containers/com.catonetworks.mac.CatoClient",
    "~/Library/Group Containers/CKGSB8B8CH43.com.catonetworks.mac.CatoClient",
    "~/Library/Group Containers/CKGSB8B8CH43.group",
    "~/Library/Saved Application State/com.catonetworks.mac.CatoClient.savedState",
  ]
end

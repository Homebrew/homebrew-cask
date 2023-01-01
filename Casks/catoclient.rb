cask "catoclient" do
  version "5.2.0.205"
  sha256 "342a0da1c3a939679cdb7b72e826eecbd99bb6dd9443102fe8fd99181410dd71"

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

cask "catoclient" do
  version :latest
  sha256 :no_check

  url "https://clientdownload.catonetworks.com/public/clients/CatoClient.pkg"
  name "Cato Client"
  desc "VPN client"
  homepage "https://www.catonetworks.com/"

  pkg "CatoClient.pkg"

  uninstall pkgutil: "com.catonetworks.mac.CatoClient"

  # Re-installing after zapping still results in the same configuration; below
  # at least clears out ~/Library/
  zap trash: [
    "~/Library/Saved Application State/com.catonetworks.mac.CatoClient.savedState/",
    "~/Library/Application Scripts/com.catonetworks.mac.CatoClient/",
    "~/Library/Application Scripts/com.catonetworks.mac.CatoClient.CatoClientExtension/",
    "~/Library/Application Scripts/CKGSB8CH43.com.catonetworks.mac.CatoClient/",
    "~/Library/Group Containers/CKGSB8B8CH43.com.catonetworks.mac.CatoClient/",
    "~/Library/Group Containers/CKGSB8B8CH43.group/",
    "~/Library/Containers/com.catonetworks.mac.CatoClient/",
    "~/Library/Containers/com.catonetworks.mac.CatoClient.CatoClientExtension/",
  ]
end

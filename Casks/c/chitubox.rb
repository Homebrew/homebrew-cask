cask "chitubox" do
  version "1.4.1"
  sha256 "ccf795670b24a4350ab45433f61a8ffb9cec73d51a7cd580b4f552d0be0ba296"

  url "https://sac.chitubox.com/software/download.do?installerUrl=https%3A%2F%2Fdownload.chitubox.com%2F17952%2Fv#{version}%2FCHITUBOX_Mac_Installer_v#{version}.dmg&softwareId=17952&softwareVersionId=v#{version}"
  name "CHITUBOX"
  desc "3D printing slicer software"
  homepage "https://www.chitubox.com/"

  livecheck do
    url "https://sac.chitubox.com/getSoftwareVersionHistoryList.do2?softwareId=17952"
    strategy :json do |json|
      json["data"]&.filter_map do |item|
        next unless item["macArmUrl"]

        item["versionId"]&.sub(/^\D+/, "")
      end
    end
  end

  depends_on :macos

  app "CHITUBOX.app"

  zap trash: [
    "~/Library/Application Support/chitubox2_0",
    "~/Library/Application Support/Chitubox_*",
    "~/Library/Application Support/chituboxResource",
    "~/Library/Caches/Chitubox_*",
  ]
end

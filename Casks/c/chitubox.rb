cask "chitubox" do
  version "1.2.1"
  sha256 "af8aa7e82cac1b35e43fdf67c7dca2615bceb65485e93efe7169d0d1ae61e355"

  url "https://sac.chitubox.com/software/download.do?installerUrl=https%3A%2F%2Fdownload.chitubox.com%2F17952%2Fv#{version}%2FCHITUBOX_Mac_Installer_v#{version}.dmg&softwareId=17952&softwareVersionId=v#{version}"
  name "CHITUBOX"
  desc "3D printing slicer software"
  homepage "https://www.chitubox.com/"

  livecheck do
    url "https://sac.chitubox.com/getSoftwareVersionHistoryList.do2?softwareId=17952"
    strategy :json do |json|
      json["data"]&.filter_map { |item| item["versionId"]&.sub(/^\D+/, "") }
    end
  end

  depends_on macos: ">= :big_sur"

  app "CHITUBOX.app"

  zap trash: [
    "~/Library/Application Support/chitubox2_0",
    "~/Library/Application Support/chituboxResource",
  ]
end

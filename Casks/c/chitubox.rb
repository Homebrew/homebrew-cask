cask "chitubox" do
  version "1.0.1"
  sha256 "cadfe2d2ccff8c13249bd70bd5882192275ad7008d1958ae6292214a82701b7e"

  url "https://sac.chitubox.com/software/download.do?installerUrl=https%3A%2F%2Fdownload.chitubox.com%2F17952%2Fv#{version}%2FCHITUBOX_v#{version}.dmg&softwareId=17952&softwareVersionId=v#{version}"
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

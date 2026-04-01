cask "chitubox" do
  version "1.2.0"
  sha256 "24d4c60030616b8d79e504a30c92725f0513994cfd4aa3023b053e795d592a6f"

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

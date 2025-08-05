cask "shearwater-cloud" do
  version "2.12.6"
  sha256 "b7c2ac53b1f1ccd40bb24ec50ae28b2f460062929abfc2d4921023779b3cc1c7"

  url "https://downloads.shearwater.com/livedownloads/ShearwaterCloudInstaller_#{version}.dmg"
  name "Shearwater Cloud"
  desc "Review, edit and share dive log data"
  homepage "https://shearwater.com/"

  # The macOS link on the download page points to a page that fetches a JSON
  # file containing the file URLs and then uses JavaScript to redirect the
  # browser to the file, so we match the version information from the JSON file.
  livecheck do
    url "https://downloads.shearwater.com/cloud_reference.json"
    regex(/ShearwaterCloudInstaller[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :json do |json, regex|
      match = json["swcloud_dmg"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Shearwater Cloud.app"

  zap trash: "~/Library/Containers/unity.Shearwater-Research.Shearwater"
end

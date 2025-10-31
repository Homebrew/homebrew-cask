cask "shearwater-cloud" do
  version "2.12.8"
  sha256 "93a09cff050020f5b19160fff28eac88179cafa442f78d36c6f140a6596dc0af"

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

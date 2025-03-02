cask "shearwater-cloud" do
  version "2.12.3"
  sha256 "aa4004b2d5f48fc0e31f3a0465a13ee16914c06e7d4e4e4d51c6a78d3feb30db"

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

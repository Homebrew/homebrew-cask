cask "pronterface" do
  version "2.0.1,3.10"

  on_big_sur :or_older do
    sha256 "5c66655efd1f5e8906169467d9843e55ec5a7f9b72fc0d827e59b850ebf944fb"

    url "https://github.com/kliment/Printrun/releases/download/printrun-#{version.csv.first}/printrun-#{version.csv.first}_macos-11_x64_py#{version.csv.second}.zip"
  end
  on_monterey :or_newer do
    sha256 "34467fb64dba31f43a15a503f2e1285b3e367a55d9a414a5bd33675d8e81719c"

    url "https://github.com/kliment/Printrun/releases/download/printrun-#{version.csv.first}/printrun-#{version.csv.first}_macos-12_x64_py#{version.csv.second}.zip"
  end

  name "Printrun"
  desc "Control your 3D printer from your PC"
  homepage "https://github.com/kliment/Printrun"

  livecheck do
    url :url
    regex(/^printrun[._-]v?(\d+(?:\.\d+)+)[._-]macos(?:.+)[._-]py(\d+(?:\.\d+)+)\.zip$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "pronterface.app"
end

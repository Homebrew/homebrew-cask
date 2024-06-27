cask "pronterface" do
  version "2.1.0,3.10"
  sha256 "cdd2966a2d793f665b24a30e42f40ab926520f36952af9140b75033a8c020e84"

  url "https://github.com/kliment/Printrun/releases/download/printrun-#{version.csv.first}/printrun-#{version.csv.first}_macos-12_x64_py#{version.csv.second}.zip"
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

  caveats do
    requires_rosetta
  end
end

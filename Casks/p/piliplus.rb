cask "piliplus" do
  version "1.1.5,4543"
  sha256 "4bc4365bb0f132a553edd4a0ed5a3951c813ef4957bc96e26426a18bb7a53587"

  url "https://github.com/bggRGjQaUbCoE/PiliPlus/releases/download/1.1.5.4/PiliPlus_macos_#{version.csv.first}%2B#{version.csv.second}.dmg"
  name "PiliPlus"
  desc "Third-party BiliBili client developed with Flutter"
  homepage "https://github.com/bggRGjQaUbCoE/PiliPlus"

  livecheck do
    url :url
    strategy :github_releases do |json|
      json.flat_map do |release|
        release["assets"]
          &.map { |asset| asset["name"] }
          &.filter_map do |name|
            match = name.match(/PiliPlus_macos_(\d+(?:\.\d+)+)\+(\d+)\.dmg/)
            next unless match

            "#{match[1]},#{match[2]}"
          end
      end
    end
  end

  app "PiliPlus.app"
end

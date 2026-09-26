cask "banktivity" do
  version "10.1.2,434"
  sha256 "73374518871c896d88d484ad6baf9429a85ea2a832559f38d92d3bef159b7424"

  url "https://www.iggsoft.com/banktivity/Banktivity#{version.csv.first}-#{version.csv.second}.dmg"
  name "Banktivity"
  desc "App to manage bank accounts in one place"
  homepage "https://www.iggsoftware.com/banktivity/"

  # The build number in the release data may not always align with the file name
  # suffix, so we match against the file name.
  livecheck do
    url "https://www.iggsoft.com/banktivity/banktivity#{version.major}-versions-feed.json"
    regex(/Banktivity[._-]?v?(\d+(?:\.\d+)+)-(\d+)\.dmg/i)
    strategy :json do |json, regex|
      json["Banktivity"]&.filter_map do |release|
        match = release["downloadURL"]&.match(regex)
        next unless match

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: :monterey

  app "Banktivity.app"

  uninstall quit: "com.iggsoftware.banktivity"

  zap trash: [
    "~/Library/Application Scripts/com.iggsoftware.banktivity",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iggsoftware.banktivity.sfl*",
    "~/Library/Containers/com.iggsoftware.banktivity",
  ]
end

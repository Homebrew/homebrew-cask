cask "psiphon-conduit" do
  version "1.8.0-RC.2"
  sha256 "56a6be1708a2e458965fcc31743cfd8ecd186f3b6e739baaa9e027996bbf1ae4"

  url "https://github.com/Psiphon-Inc/conduit/releases/download/release-mac-#{version}/conduit.dmg",
      verified: "github.com/Psiphon-Inc/conduit/"
  name "Psiphon Conduit"
  desc "Internet freedom tool that turns your device into a proxy for the Psiphon net"
  homepage "https://conduit.psiphon.ca/"

  livecheck do
    url :url
    regex(/^release-mac[._-]v?(\d+(?:\.\d+)+(?:[._-]RC(?:[._]?\d+)?)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]
        next unless (match = release["tag_name"]&.match(regex))

        match[1]
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "Conduit.app"

  zap trash: [
    "~/Library/Application Scripts/ca.psiphon.conduit",
    "~/Library/Containers/ca.psiphon.conduit",
  ]
end

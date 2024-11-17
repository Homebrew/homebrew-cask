cask "retroshare" do
  version "0.6.7a,0c03e93a4-01-03-2024-MacOS-10.15.7-Qt-5.15.11,0.6.7.2"
  sha256 "6757a0bffba36fd85515117edba7e821bb3105500f8a282be942abeee3373230"

  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version.csv.third || version.csv.first}/RetroShare-#{version.csv.first}#{"-#{version.csv.second}" if version.csv.second.present?}.dmg",
      verified: "github.com/RetroShare/RetroShare/"
  name "RetroShare"
  desc "Friend-2-Friend and secure decentralised communication platform"
  homepage "https://retroshare.cc/"

  # The tag version can differ from the filename version, so we include both in
  # the `version` when necessary.
  livecheck do
    url "https://retroshare.cc/downloads.html"
    regex(%r{/v?(\d+(?:\.\d+)+)/Retroshare[._-]v?(\d+(?:\.\d+)+[a-z]?)+(?:[._-]([^"' >]*?))?\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        if match[2] && (match[0] != match[1])
          "#{match[1]},#{match[2]},#{match[0]}"
        else
          "#{match[1]},#{match[2]},"
        end
      end
    end
  end

  app "retroshare.app"

  zap trash: "~/.retroshare"

  caveats do
    requires_rosetta
  end
end

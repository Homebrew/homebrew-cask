cask "stella" do
  version "7.0"
  sha256 "dcd6de1baf5b2fdcf655478eb04d3fb8e65e3cdaed2e04cd6c5347b3149c1eed"

  url "https://github.com/stella-emu/stella/releases/download/#{version.csv.second || version.csv.first}/Stella-#{version.csv.first}-macos.dmg",
      verified: "github.com/stella-emu/stella/"
  name "Stella"
  desc "Multi-platform Atari 2600 Emulator"
  homepage "https://stella-emu.github.io/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/Stella[._-]v?(\d+(?:\.\d+)+[a-z]?)(?:-macos)?\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[2]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "Stella.app"

  zap trash: "~/Library/Application Support/Stella"
end

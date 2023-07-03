cask "sonic-lineup" do
  version "1.1,2768"
  sha256 "ebf5e90dbfd6cc5c3fcdd0004830d5cb7ff8b6f05ad9c7c4cac810d7a7b48c4c"

  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.csv.second}/Sonic%20Lineup-#{version.csv.first}.dmg",
      verified: "code.soundsoftware.ac.uk/attachments/download/"
  name "Sonic Lineup"
  desc "Rapid visualisation of multiple audio files for comparison"
  homepage "https://sonicvisualiser.org/sonic-lineup/"

  livecheck do
    url "https://code.soundsoftware.ac.uk/projects/sonic-lineup/files"
    regex(%r{href=.*?/(\d+)/Sonic%20Lineup[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "Sonic Lineup.app"

  zap trash: [
    "~/Library/Application Support/sonic-visualiser/Sonic Lineup",
    "~/Library/Preferences/org.sonicvisualiser.Sonic Lineup.plist",
    "~/Library/Preferences/org.sonicvisualiser.SonicLineup.plist",
    "~/Library/Saved Application State/org.sonicvisualiser.SonicLineup.savedState",
  ]
end

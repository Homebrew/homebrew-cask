cask "command-x" do
  version "1.4.0-1705659953,3zg73o7fs2rlpypaud9pj,x9gpppflpv4ve2t2qm1yg5ht9"
  sha256 "8112631130d07332ce4fd403eeb248f060cbfa014641fa7dbc318fb3e56e198c"

  url "https://www.dropbox.com/scl/fi/#{version.csv.second}/Command-X-#{version.major_minor_patch}.zip?rlkey=#{version.csv.third}&raw=1",
      verified: "dropbox.com/scl/fi/"
  name "Command X"
  desc "Cut and paste files in Finder"
  homepage "https://sindresorhus.com/command-x"

  deprecate! date: "2024-07-09", because: :moved_to_mas

  depends_on macos: ">= :ventura"

  app "Command X.app"

  zap trash: [
    "~/Library/Application Scripts/com.sindresorhus.Command-X",
    "~/Library/Containers/com.sindresorhus.Command-X",
  ]
end

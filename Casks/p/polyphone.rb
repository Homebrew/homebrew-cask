cask "polyphone" do
  macos_version = "-MacOS_12"

  on_big_sur :or_older do
    version "2.5.1,130"
    sha256 "03b3509f8a6af45a7de6b93aeaf62bf5fae552aba7806b0ac46cf24ba57f37e3"

    macos_version = "_MacOS_10.13"
  end
  on_monterey :or_newer do
    version "2.5.1,129"
    sha256 "89a60fc2444a4502719d23f2d5404a1fa9677db64ef09267ebced0eddf77a0dc"
  end

  url "https://www.polyphone.io/download/0/v#{version.csv.second}/Polyphone#{macos_version}-#{version.csv.first}.dmg",
      user_agent: :browser
  name "Polyphone"
  desc "Soundfont editor for quickly designing musical instruments"
  homepage "https://www.polyphone.io/en"

  livecheck do
    url "https://www.polyphone.io/en/software"
    regex(/href=.*?file_id=(\d+).*?Polyphone#{macos_version}[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  app "polyphone.app"

  zap trash: [
    "~/Library/Preferences/com.polyphone.Polyphone.plist",
    "~/Library/Saved Application State/fr.polyphone.Polyphone.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

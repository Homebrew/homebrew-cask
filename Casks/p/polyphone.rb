cask "polyphone" do
  on_big_sur :or_older do
    version "2.5-1,130"
    sha256 "03b3509f8a6af45a7de6b93aeaf62bf5fae552aba7806b0ac46cf24ba57f37e3"

    url "https://www.polyphone.io/download/0/v#{version.csv.second}/Polyphone_MacOS_10.13-#{version.csv.first}.dmg",
        user_agent: :browser

    livecheck do
      url "https://www.polyphone.io/en/software"
      regex(/file_id=(\d+)" title="Download the file &ldquo;Polyphone_MacOS_10\.13-(\d+(?:[\.-]\d+)+)/i)
      strategy :page_match do |page, regex|
        match = page.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end
  on_monterey :or_newer do
    version "2.5.1,129"
    sha256 "89a60fc2444a4502719d23f2d5404a1fa9677db64ef09267ebced0eddf77a0dc"

    url "https://www.polyphone.io/download/0/v#{version.csv.second}/Polyphone-MacOS_12-#{version.csv.first}.dmg",
        user_agent: :browser
    livecheck do
      url "https://www.polyphone.io/en/software"
      regex(/file_id=(\d+)" title="Download the file &ldquo;Polyphone-MacOS_12-(\d+(?:[\.-]\d+)+)/i)
      strategy :page_match do |page, regex|
        match = page.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  name "Polyphone"
  desc "Soundfont editor for quickly designing musical instruments"
  homepage "https://www.polyphone.io/en"

  depends_on macos: ">= :monterey"

  app "polyphone.app"

  zap trash: [
    "~/Library/Preferences/com.polyphone.Polyphone.plist",
    "~/Library/Saved Application State/fr.polyphone.Polyphone.savedState",
  ]

  caveats do
    requires_rosetta
  end
end

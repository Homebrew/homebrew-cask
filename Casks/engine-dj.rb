cask "engine-dj" do
  version "3.1.0,ff36bc1e3b,ae48c5bc6a"
  sha256 "6451abc67bf1e750bc4e289f530d45bdaf6eea2e2d5aea4da458ca85f6ff20c4"

  url "https://imb-cicd-public.s3.amazonaws.com/Engine/#{version.csv.first}/Release/EDJ/mac/#{version.csv.third}/Engine_DJ_Release_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "imb-cicd-public.s3.amazonaws.com/Engine/"
  name "Engine DJ Desktop"
  desc "DJ software suite"
  homepage "https://enginedj.com/"

  livecheck do
    url "https://enginedj.com/downloads"
    regex(%r{href=.*?/Release/EDJ/mac/(\w*?)/Engine[._-]DJ_Release[._-](\d+(?:\.\d+)+)[._-](\w*?)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[2]},#{match[0]}" }
    end
  end

  pkg "Engine DJ_#{version.csv.first}_Setup.pkg"

  uninstall pkgutil: [
    "com.airmusictechnology.enginedj.application",
    "com.airmusictechnology.engineprime.application",
  ]

  zap trash: [
        "~/Library/Application Support/AIR Music Technology/EnginePrime",
        "~/Library/Caches/AIR Music Technology/EnginePrime",
        "~/Library/Preferences/com.air-music-technology.EnginePrime.plist",
        "~/Library/Saved Application State/com.air-music-technology.EnginePrime.savedState",
        "~/Music/Engine Library",
      ],
      rmdir: [
        "~/Library/Application Support/AIR Music Technology",
        "~/Library/Caches/AIR Music Technology",
      ]
end

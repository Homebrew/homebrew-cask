cask "engine-dj" do
  version "4.3.0,1f04aaf5d33ebbeb,159ab27b8d"
  sha256 "940e313c66c65d57d9e4e2ea26c58f00fd19fd52d8f57f76ceb3330b35696cda"

  url "https://imb-cicd-public.s3.amazonaws.com/Engine/#{version.csv.first}/Release/#{version.csv.second}/Engine_DJ_#{version.csv.first}_#{version.csv.third}_Setup.dmg",
      verified: "imb-cicd-public.s3.amazonaws.com/Engine/"
  name "Engine DJ Desktop"
  desc "DJ software suite"
  homepage "https://enginedj.com/"

  livecheck do
    url "https://enginedj.com/downloads"
    regex(
      %r{href=.*?/Engine/(\d+(?:\.\d+)+)/Release/(\w*)/Engine[._-]DJ[._-]\d+(?:\.\d+)+[._-](\w*?)[._-]Setup\.dmg}i,
    )
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
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

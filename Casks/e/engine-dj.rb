cask "engine-dj" do
  version "4.2.0,4bb95a6097f50ea7,7c209f5bc9"
  sha256 "6cd0d65fe38f708257eac25c8ab6589a95643c971626bbe0df87a1c868e32c2e"

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

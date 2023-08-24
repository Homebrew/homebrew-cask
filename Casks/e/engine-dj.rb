cask "engine-dj" do
  version "3.2.0,503f36225b,d1d6ed89e0"
  sha256 "6e0debf31b56688dded9fbb1afa63b16cc1f8759aa1b622e2079a8ea5c7ea969"

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

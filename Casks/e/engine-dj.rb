cask "engine-dj" do
  version "4.1.0,c6c610cd57fb0f2c,a9393b4f35"
  sha256 "4e957f53b02025ec3a669354ee1ef394758673600993d9aaa1d42239d684fdb2"

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

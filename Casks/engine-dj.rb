cask "engine-dj" do
  version "3.0.1,6c40df4446"
  sha256 "f4f7e212d2b3bf47087ef2caa9ee710559584ccdca680dd860ed387a3aea6a31"

  url "https://imb-cicd-public.s3.amazonaws.com/Engine/#{version.csv.first}/Release/EDJ/mac/5e1011cdeb/Engine_DJ_Release_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "imb-cicd-public.s3.amazonaws.com/Engine/"
  name "Engine DJ Desktop"
  desc "DJ software suite"
  homepage "https://enginedj.com/"

  livecheck do
    url "https://enginedj.com/downloads"
    regex(%r{href=.*?/Release/EDJ/mac/.*?/Engine[._-]DJ_Release[._-](\d+(?:\.\d+)+)[._-](\w*?)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  pkg "Engine DJ_#{version.csv.first}_Setup.pkg"

  uninstall pkgutil: [
    "com.airmusictechnology.enginedj.application",
    "com.airmusictechnology.engineprime.application",
  ]

  zap trash: [
    "~/Library/Application Support/AIR Music Technology",
    "~/Library/Caches/AIR Music Technology",
    "~/Library/Preferences/com.air-music-technology.EnginePrime.plist",
    "~/Library/Saved Application State/com.air-music-technology.EnginePrime.savedState",
    "~/Music/Engine Library",
  ]
end

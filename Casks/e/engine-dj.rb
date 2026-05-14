cask "engine-dj" do
  version "5.0.0,68214e98c667298c,12d16a34d4"
  sha256 "fc53b91de204813ea0d9d1922bdd053f8b3922648e4fddf9770f6c836410fd76"

  url "https://public.inmusiccdn.com/Engine/#{version.csv.first}/RELEASE/#{version.csv.second}/Engine_DJ_#{version.csv.first}_#{version.csv.third}_Setup.dmg",
      verified: "public.inmusiccdn.com/Engine/"
  name "Engine DJ Desktop"
  desc "DJ software suite"
  homepage "https://enginedj.com/"

  # The file name regex needs to be anchored to avoid matching the variant for
  # SYSTEM ONE users, which uses the same file name format but has a different
  # version.
  livecheck do
    url "https://enginedj.com/downloads"
    regex(%r{
      MacDownloadButton.+?
      href=.*?/Engine/v?(\d+(?:\.\d+)+)/Release/(\h+)/
      Engine[._-]DJ[._-]v?\d+(?:\.\d+)+[._-](\h+?)[._-]Setup\.dmg
    }imx)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  depends_on macos: :monterey

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

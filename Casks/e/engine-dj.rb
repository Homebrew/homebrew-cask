cask "engine-dj" do
  version "5.1.0,c420dd2bb4faafb2,2acfe893c4"
  sha256 "38c3f0c1d0349828d94d2576f265976fbb7a001545b8d9265fe8b59c2eb8f575"

  url "https://public.inmusiccdn.com/Engine/#{version.csv.first}/RELEASE/#{version.csv.second}/Engine_DJ_#{version.csv.first}_#{version.csv.third}_Setup.dmg"
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

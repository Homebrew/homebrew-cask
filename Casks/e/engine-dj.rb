cask "engine-dj" do
  version "4.3.4,0868152660cbb47b,7d5a3fd8bc"
  sha256 "b25d0a7338461ba21e81783379c40ea336b37f99eddd8eb2e8c475c855b9c604"

  url "https://imb-cicd-public.s3.amazonaws.com/Engine/#{version.csv.first}/Release/#{version.csv.second}/Engine_DJ_#{version.csv.first}_#{version.csv.third}_Setup.dmg",
      verified: "imb-cicd-public.s3.amazonaws.com/Engine/"
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

  depends_on macos: ">= :monterey"

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

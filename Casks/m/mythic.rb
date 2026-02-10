cask "mythic" do
  version "0.6.0,92033dfd-7a35-4629-9ca5-60d66576fb65"
  sha256 "bcdb543d56e71e6ae3e102ff5bebbbdecdb1066549228d4c5f1a3c5cfa82c816"

  url "https://dl.getmythic.app/updates/#{version.csv.second}/Mythic.zip"
  name "Mythic"
  desc "Game launcher with the ability to run Windows games"
  homepage "https://getmythic.app/"

  livecheck do
    url "https://dl.getmythic.app/updates/update.xml"
    regex(%r{/(\h+(?:-\h+)*)/Mythic\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next item.short_version if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Mythic.app"

  zap trash: [
    "~/Library/Application Support/Mythic",
    "~/Library/Caches/xyz.blackxfiied.Mythic.plist",
    "~/Library/HTTPStorages/xyz.blackxfiied.Mythic",
    "~/Library/HTTPStorages/xyz.blackxfiied.Mythic.binarycookies",
    "~/Library/Preferences/xyz.blackxfiied.Mythic.plist",
  ]
end

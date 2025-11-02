cask "mythic" do
  version "0.5.0,cfbc3111-f5b3-469d-823b-393f0793c550"
  sha256 "782a07d9d83f686c351a3867661757447480e52fd65904816760a38b7775b30e"

  url "https://dl.getmythic.app/updates/#{version.csv.second}/Mythic.zip"
  name "Mythic"
  desc "Game launcher with the ability to run Windows games"
  homepage "https://getmythic.app/"

  livecheck do
    url "https://getmythic.app/appcast.xml"
    regex(%r{/(\h+(?:-\h+)*)/Mythic\.zip}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next item.short_version if match.blank?

      "#{item.short_version},#{match[1]}"
    end
  end

  no_autobump! because: "livecheck fails in CI environment"

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

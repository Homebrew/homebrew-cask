cask "karafun" do
  version "2.3.0,91,8b1dd03e90009107ae99a212322cc03b,1466486e9d"
  sha256 "9342909a313edb999a16885963538314f477438bcfb1fb7fd79c36c6b1cbc126"

  url "https://c17.recis.io/sl/#{version.csv.fourth}/#{version.csv.third}/KaraFun_#{version.csv.first}.#{version.csv.second}.dmg",
      verified: "c17.recis.io/sl/"
  name "KaraFun"
  desc "Karaoke player software"
  homepage "https://www.karafun.com/"

  livecheck do
    url "https://www.karafun.com/osx/appcast.xml"
    regex(%r{sl/([^/]+)/([^/]+)/v?KaraFun[._-]v?(\d+(?:\.\d+)+)})
    strategy :sparkle do |item|
      match = item.url.match(regex)
      next if match.blank?

      if "#{item.short_version},#{item.version}" == "#{version.csv.first},#{version.csv.second}"
        version.to_s
      else
        "#{item.short_version},#{item.version},#{match[2]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "KaraFun.app"

  zap trash: [
    "~/Library/Application Support/com.recisio.kfiphone",
    "~/Library/Containers/com.recisio.kfiphone",
  ]
end

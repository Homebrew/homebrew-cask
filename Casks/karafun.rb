cask "karafun" do
  version "2.3.0.91,8b1dd03e90009107ae99a212322cc03b,fcfd34139c"
  sha256 "9342909a313edb999a16885963538314f477438bcfb1fb7fd79c36c6b1cbc126"

  url "https://c20.recis.io/sl/#{version.csv.third}/#{version.csv.second}/KaraFun_#{version.csv.first}.dmg",
      verified: "c20.recis.io/sl/"
  name "KaraFun"
  desc "Karaoke player software"
  homepage "https://www.karafun.com/"

  livecheck do
    url "https://www.karafun.fr/osx/appcast.xml"
    regex(%r{sl/([^/]+)/([^/]+)/v?KaraFun[._-]v?(\d+(?:\.\d+)+)})
    strategy :sparkle do |item|
      puts item.url
      match = item.url.match(regex)
      next if match.blank?

      "#{match[3]},#{match[2]},#{match[1]}"
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

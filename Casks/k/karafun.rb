cask "karafun" do
  version "2.10.1"
  sha256 :no_check

  url "https://www.karafun.com/download/mac.html"
  name "KaraFun"
  desc "Karaoke player software"
  homepage "https://www.karafun.com/"

  livecheck do
    url "https://www.karafun.fr/osx/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "KaraFun.app"

  zap trash: [
    "~/Library/Application Support/com.recisio.kfiphone",
    "~/Library/Containers/com.recisio.kfiphone",
  ]
end

cask "karafun" do
  version "2.9.0"
  sha256 :no_check

  url "https://www.karafun.com/download/mac.html"
  name "KaraFun"
  desc "Karaoke player software"
  homepage "https://www.karafun.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "KaraFun.app"

  zap trash: [
    "~/Library/Application Support/com.recisio.kfiphone",
    "~/Library/Containers/com.recisio.kfiphone",
  ]
end

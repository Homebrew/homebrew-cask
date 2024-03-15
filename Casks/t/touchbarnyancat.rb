cask "touchbarnyancat" do
  version "0.3.0"
  sha256 "c4aff7fbf593860e76def6e8200390d96b3ad9076a38deb28cdfdfc1471d1c88"

  url "https://github.com/avatsaev/touchbar_nyancat/releases/download/#{version}/touchbar_nyancat.app.zip"
  name "touchbarnyancat"
  desc "Stupid nyancat animation on your +$2k MacBook Pro's Touchbar"
  homepage "https://github.com/avatsaev/touchbar_nyancat"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "touchbar_nyancat.app"

  zap trash: "~/Library/Application Support/touchbar_nyancat"
end

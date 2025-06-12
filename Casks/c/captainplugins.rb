cask "captainplugins" do
  version "7.3.6.10032"
  sha256 :no_check

  url "https://builds.mixedinkey.com/download/53/release/latest?key=dh-708a5f510d404bca9c44e2cecf5ced03"
  name "Captain Plugins Epic"
  desc "Music theory tool"
  homepage "https://mixedinkey.com/get-captain-epic/"

  livecheck do
    url :url
    strategy :header_match
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :high_sierra"

  pkg "CaptainPlugins.pkg"

  uninstall pkgutil: "com.mixedinkey.CaptainPlugins.Epic.pkg"

  zap trash: [
    "~/Library/Application Support/Captain Plugins",
    "~/Music/Captain Plugins",
  ]
end

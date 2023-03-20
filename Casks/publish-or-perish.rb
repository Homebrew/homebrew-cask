cask "publish-or-perish" do
  version "8.8.4275.8412"
  sha256 :no_check

  url "https://harzing.com/download/PoP#{version.major}Mac.pkg"
  name "Harzing Publish or Perish"
  desc "Retrieves and analyzes academic citations"
  homepage "https://harzing.com/resources/publish-or-perish"

  livecheck do
    url "https://harzing.com/download/pop#{version.major}mac.txt"
    regex(/Version=(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  pkg "PoP#{version.major}Mac.pkg"

  uninstall pkgutil: "com.tarma.popmac.pkg"

  zap trash: [
    "~/Library/Application Support/Publish or Perish",
    "~/Library/Preferences/Publish or Perish.json",
    "~/Library/Preferences/com.tarma.popmac.plist",
  ]
end

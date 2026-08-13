cask "dictator" do
  version "2.2.328"
  sha256 "6224f4d768843681ff1aa20bb493df1d67bdd04fec8bce7a177e5cc087a6e835"

  url "https://dictator.my/release/Dictator_#{version}_universal.pkg"
  name "Dictator"
  desc "Speech to text, dictation and offline translation that run on your own machine"
  homepage "https://dictator.my/"

  livecheck do
    url "https://dictator.my/release/latest.json"
    strategy :json do |json|
      json["files"]["macosPkg"][/Dictator_([\d.]+)_universal\.pkg/, 1]
    end
  end

  depends_on macos: :big_sur

  pkg "Dictator_#{version}_universal.pkg"

  uninstall pkgutil: "com.bozex.dictator"

  zap trash: [
    "~/Library/Application Support/com.bozex.dictator",
    "~/Library/Caches/com.bozex.dictator",
    "~/Library/Preferences/com.bozex.dictator.plist",
    "~/Library/Saved Application State/com.bozex.dictator.savedState",
  ]
end

cask "dictator" do
  version "2.2.397"
  sha256 "6112c16d2490147cb1c2656e903a556b72e00c1e3aa02b965f9d4658c6e0a411"

  url "https://dictator.my/release/Dictator_#{version}_universal.pkg"
  name "Dictator"
  desc "Speech-to-text, dictation, live captions and offline translation"
  homepage "https://dictator.my/"

  livecheck do
    url "https://dictator.my/release/latest.json"
    strategy :json do |json|
      json["version"]
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

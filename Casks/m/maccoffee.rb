cask "maccoffee" do
  version "2.0.1"
  sha256 "d31c079ead1049755443a8429beef6ebc10b130e7b7919a6d811fae88853b149"

  url "https://rekurt.github.io/maccoffee-dist/MacCoffee-#{version}.dmg"
  name "Mac Coffee"
  desc "Utility to prevent idle sleep"
  homepage "https://rekurt.github.io/maccoffee-dist/"

  livecheck do
    url "https://rekurt.github.io/maccoffee-dist/"
    regex(/MacCoffee[ ._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mac Coffee.app"

  uninstall quit: "com.rekurt.maccoffee.direct"

  zap trash: [
    "~/Library/Caches/com.rekurt.maccoffee.direct",
    "~/Library/HTTPStorages/com.rekurt.maccoffee.direct*",
    "~/Library/Preferences/com.rekurt.maccoffee.direct.plist",
  ]
end

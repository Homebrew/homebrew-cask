cask "maccoffee" do
  version "2.0.0"
  sha256 "a165d94a517bc8464d839c56093ed0788afd2083f06eef80aebbf17de2c22243"

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

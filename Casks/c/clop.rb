cask "clop" do
  version "3.7.5"
  sha256 "86b274b9beb44cd46ded1ca27da6b85cace3f37a0eb17700943e29f96bfc0fe3"

  url "https://files.lowtechguys.com/releases/Clop-#{version}.dmg"
  name "Clop"
  desc "Image, video and clipboard optimiser"
  homepage "https://lowtechguys.com/clop/"

  livecheck do
    url "https://files.lowtechguys.com/clop/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Clop.app"

  zap trash: [
    "~/.clop-debug-logs",
    "~/Library/Application Scripts/com.lowtechguys.Clop",
    "~/Library/Application Scripts/com.lowtechguys.Clop.FinderOptimiser",
    "~/Library/Application Support/Clop",
    "~/Library/Caches/Clop",
    "~/Library/Caches/com.lowtechguys.Clop",
    "~/Library/Containers/com.lowtechguys.Clop.FinderOptimiser",
    "~/Library/Daemon Containers/54F7B6C1*/Data/com.apple.kvs/ChangeTokens/NoEncryption/Clop/*.com.lowtechguys.Clop",
    "~/Library/HTTPStorages/com.lowtechguys.Clop",
    "~/Library/HTTPStorages/com.lowtechguys.Clop.binarycookies",
    "~/Library/Preferences/com.lowtechguys.Clop.plist",
  ]
end

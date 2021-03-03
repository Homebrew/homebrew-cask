cask "captin" do
  version "1.1.2,137:1614351875"
  sha256 "62da27c0a81e2b4666e97ed749707f7f4734504c325f46cf9aa5422421dcd858"

  url "https://dl.devmate.com/com.100hps.captin/#{version.after_comma.before_colon}/#{version.after_colon}/Captin-#{version.after_comma.before_colon}.dmg",
      verified: "dl.devmate.com/com.100hps.captin/"
  name "Captin"
  homepage "http://captin.strikingly.com/"

  livecheck do
    url "https://updates.devmate.com/com.100hps.captin.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/Captin-\d+\.dmg}i, 1]}"
    end
  end

  app "Captin.app"

  uninstall quit: "com.100hps.captin"

  zap trash: [
    "~/Library/Caches/com.100hps.captin",
    "~/Library/Preferences/com.100hps.captin.plist",
  ]
end

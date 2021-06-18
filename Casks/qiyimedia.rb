cask "qiyimedia" do
  version "20201215,17:34"
  sha256 :no_check

  url "http://221.212.217.42/cdn/pcclient/#{version.before_comma}/#{version.after_comma.before_colon}/#{version.after_colon}/iQIYIMedia_271.dmg",
      verified: "221.212.217.42/"
  name "iQIYI"
  name "爱奇艺视频"
  desc "Interactive media player"
  homepage "https://app.iqiyi.com/mac/player/index.html"

  livecheck do
    url "https://mbdapp.iqiyi.com/j/ot/iQIYIMedia_271.dmg"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d+)/(\d+)/(\d+)/iQIYIMedia_\d+\.dmg}i)
      "#{match[1]},#{match[2]}:#{match[3]}"
    end
  end

  depends_on macos: ">= :catalina"

  app "爱奇艺.app"

  zap trash: [
    "~/Library/Application Scripts/com.iqiyi.player",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.iqiyi.player.sfl*",
    "~/Library/Containers/com.iqiyi.player",
  ]
end

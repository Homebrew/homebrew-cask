cask "melodics" do
  version "2.1.6315,D750931B-6538-4C07-A862-70BCC05117A4"
  sha256 "e5c7c2f18edb7ba9f10cb08e5571bd28f1fe06c445159398ffd840a77e195e86"

  url "https://web-cdn.melodics.com/download/#{version.after_comma}.zip"
  name "Melodics"
  desc "Helps you learn to play your instrument"
  homepage "https://melodics.com/"

  livecheck do
    url "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/(\h+(?:-\h+)+)\.zip}i, 1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Melodics.app"
end

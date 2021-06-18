cask "melodics" do
  version "2.1.6237,1E50E5AE-7A7C-465D-BDFB-5C2A686690AE"
  sha256 "a2f8a2667a34f74e25f905a74b50218a05e6f65268389fd45aba055236f179b5"

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

cask "melodics" do
  version "2.1.6397,B594381D-4D17-4ECF-A343-BA44C8C3D29E"
  sha256 "bcd27581c94b01f0155fa2c7379a7d6ea769ac6889f501c76b594c6d5460b584"

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

cask "melodics" do
  version "2.1.6404,96A38A3A-5D8C-463B-8C1F-C1F03B6407E2"
  sha256 "0bd96a2787e48a7af4c9f51557cb40adc375b6968c0e88d7bf331604f84e9dec"

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

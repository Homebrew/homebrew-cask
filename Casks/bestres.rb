cask "bestres" do
  version "1.0,100:1426778671"
  sha256 "1b706a3550edbc1411bdc4665490cce3b22cef68a6abae82af0fbd46370ce697"

  url "https://dl.devmate.com/com.icyberon.BestRes/#{version.after_comma.before_colon}/#{version.after_colon}/BestRes-#{version.after_comma.before_colon}.zip",
      verified: "devmate.com/com.icyberon.BestRes/"
  name "BestRes"
  homepage "https://bestres.wojtek.im/"

  livecheck do
    url "https://updates.devmate.com/com.icyberon.BestRes.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.version}:#{item.url[%r{/(\d+)/BestRes-\d+\.zip}i, 1]}"
    end
  end

  depends_on macos: ">= :yosemite"

  app "BestRes.app"
end

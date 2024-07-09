cask "bestres" do
  version "1.0,100,1426778671"
  sha256 "1b706a3550edbc1411bdc4665490cce3b22cef68a6abae82af0fbd46370ce697"

  url "https://dl.devmate.com/com.icyberon.BestRes/#{version.csv.second}/#{version.csv.third}/BestRes-#{version.csv.second}.zip",
      verified: "devmate.com/com.icyberon.BestRes/"
  name "BestRes"
  desc "Quickly change your screen resolution from the menubar"
  homepage "https://bestres.wojtek.im/"

  livecheck do
    url "https://updates.devmate.com/com.icyberon.BestRes.xml"
    regex(%r{/(\d+)/BestRes\d*?[_-]v?(\d+(?:\.\d+)*)\.(?:dmg|zip)}i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{item.short_version},#{match[2]},#{match[1]}"
    end
  end

  app "BestRes.app"

  caveats do
    requires_rosetta
  end
end

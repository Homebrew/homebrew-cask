cask "toneprint" do
  version "4.7.2,4580aa8802a3c5cccde223bc3eaeca51"
  sha256 "ff9db220fb31272071959d98d7424d7ed76ee3501d6f0c6452b2a439733f9da9"

  url "https://cdn-media.empowertribe.com/#{version.csv.second}/TonePrint_#{version.csv.first}.dmg"
  name "TonePrint"
  desc "Alter the character of your TonePrint pedal"
  homepage "https://www.tcelectronic.com/en/toneprints"

  livecheck do
    url "https://www.tcelectronic.com/en/products/0709-aik", header: "RSC: 1"
    regex(%r{/(\h+)/TonePrint[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  app "TonePrint.app"

  zap trash: [
    "~/Library/Application Support/TonePrint",
    "~/Library/Caches/com.tcelectronic.toneprint",
  ]
end

cask "rotato" do
  version "112,1604697138"
  sha256 "4d68cbb8832e23d306f34123a65de3788c70e3f6eb49c055136febc8f864405c"

  url "https://dl.devmate.com/com.mortenjust.Rendermock/#{version.before_comma}/#{version.after_comma}/DesignCamera-#{version.before_comma}.zip",
      verified: "dl.devmate.com/com.mortenjust.Rendermock/"
  name "Rotato"
  homepage "https://rotato.xyz/"

  livecheck do
    url "https://updates.devmate.com/com.mortenjust.Rendermock.xml"
    strategy :sparkle do |item|
      "#{item.short_version},#{item.url[%r{/(\d+)/DesignCamera-\d+\.zip}i, 1]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Rotato.app"
end

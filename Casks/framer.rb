cask "framer" do
  version "63096,1616509244"
  sha256 "010dac8f36fa842171832d863c69d898445b700623a65b7425b484971ea242d9"

  url "https://dl.framer.com/com.framer.desktop/#{version.before_comma}/#{version.after_comma}/FramerDesktop-#{version.before_comma}.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/desktop/"

  livecheck do
    url "https://updates.framer.com/sparkle/com.framer.desktop"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/(\d+)/FramerDesktop-\d+.zip}i, 1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Framer.app"
end

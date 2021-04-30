cask "framer-x" do
  version "36854,1590141192"
  sha256 "ff8d2ea3ad84600942c25466e0fbc8efbf5cf0fa9995a8ac6796442a5e3e2359"

  url "https://dl.framer.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  name "Framer X"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://framer.com/"

  livecheck do
    url "https://updates.framer.com/sparkle/com.framer.x"
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/FramerX-(\d+).zip}i)
      "#{match[2]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Framer X.app"

  caveats do
    discontinued

    <<~EOS
      This software has been deprecated in favor of Framer Desktop (framer cask).
      Your Framer X license will be honoured on the new software:

        https://www.framer.com/support/using-framer/framer-x/
    EOS
  end
end

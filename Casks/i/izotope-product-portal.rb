cask "izotope-product-portal" do
  version "1.4.8"
  sha256 "5f4ea1f17723630b3512598da86086a661a05880cdd9a33aad1b0f2aafc402ff"

  url "https://izotopedownloads.s3.amazonaws.com/product_download/iZotope_Product_Portal_v#{version.dots_to_underscores}.dmg",
      verified: "izotopedownloads.s3.amazonaws.com/"
  name "Izotope product portal"
  desc "Professional audio software for audio recording, mixing, broadcast and others"
  homepage "https://www.izotope.com/en/products/downloads.html"

  livecheck do
    url "https://www.izotope.com/in-app/pp/download/mac"
    strategy :header_match do |headers|
      match = headers["location"][/iZotope[._-]Product[._-]Portal[._-]v?(\d+(?:[._-]\d+)+\w?)\.dmg/i, 1]
      next if match.blank?

      match.tr("_", ".")
    end
  end

  installer script: {
    executable: "#{staged_path}/Install Product Portal.app/Contents/MacOS/installbuilder.sh",
    args:       ["--mode", "unattended", "--disable-components", "launch_after_install"],
    sudo:       true,
  }

  uninstall delete: "/Applications/iZotope Product Portal.app"

  zap trash: [
    "~/Library/Application Support/iZotope",
    "~/Library/Saved Application State/com.izotope.audioplugins.productportal.savedState",
  ]
end

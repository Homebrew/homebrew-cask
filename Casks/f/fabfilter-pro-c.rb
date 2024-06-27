cask "fabfilter-pro-c" do
  version "2.20"
  sha256 "3245198d936e65028b004103ad0812f78d045adf096da3a19ae542efeb74958b"

  url "https://cdn-b.fabfilter.com/downloads/ffproc#{version.no_dots}.dmg"
  name "FabFilter Pro-C"
  desc "Compressor plug-in"
  homepage "https://www.fabfilter.com/products/pro-c-2-compressor-plug-in"

  livecheck do
    url "https://www.fabfilter.com/download"
    strategy :page_match do |page|
      match = page.match(/ffproc(\d)(\d+)\.dmg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  pkg "FabFilter Pro-C #{version} Installer.pkg"

  uninstall pkgutil: "com.fabfilter.Pro-C.#{version.major}"

  # No zap stanza required
end

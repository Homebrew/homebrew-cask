cask "qlvideo" do
  version "1.94"
  sha256 "a497bd1facd041c1e51fecc24060a7a02bfbeaa859c891aa33ebbe315018847f"

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  name "QuickLook Video"
  homepage "https://github.com/Marginal/QLVideo"

  livecheck do
    url "https://github.com/Marginal/QLVideo/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/QLVideo_(\d+?)(\d+)\.pkg}i)
      "#{match[1]}.#{match[2]}"
    end
  end

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil:   "uk.org.marginal.qlvideo",
            launchctl: "uk.org.marginal.qlvideo.mdimporter"

  zap trash: "~/Library/Application Support/uk.org.marginal.qlvideo"
end

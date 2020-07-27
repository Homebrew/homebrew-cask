cask "qlvideo" do
  version "1.93"
  sha256 "a0bce00cc2073fe065722409d32605cc2c20eaab89981e2d965d571d84fd77e0"

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  appcast "https://github.com/Marginal/QLVideo/releases.atom"
  name "QuickLook Video"
  homepage "https://github.com/Marginal/QLVideo"

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil:   "uk.org.marginal.qlvideo",
            launchctl: "uk.org.marginal.qlvideo.mdimporter"

  zap trash: "~/Library/Application Support/uk.org.marginal.qlvideo"
end

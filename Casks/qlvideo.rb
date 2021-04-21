cask "qlvideo" do
  version "1.94"
  sha256 "94db54232f82588b63da78194f407a0dbff690f36e3fc0e9fb4220398b16efa2"

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

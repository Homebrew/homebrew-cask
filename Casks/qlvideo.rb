cask "qlvideo" do
  version "1.96"
  sha256 "faf117900c1976f3861bb3d2b07d4409a219562f4f098362549baea5b8a3e456"

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.no_dots}/QLVideo_#{version.no_dots}.pkg"
  name "QuickLook Video"
  desc "QuickLook generator for video files"
  homepage "https://github.com/Marginal/QLVideo"

  livecheck do
    url "https://api.github.com/repos/Marginal/QLVideo/releases"
    strategy :page_match do |page|
      match = page.match(/QLVideo_(\d+?)(\d+)\.pkg/i)
      next if match.blank?

      "#{match[1]}.#{match[2]}"
    end
  end

  pkg "QLVideo_#{version.no_dots}.pkg"

  uninstall pkgutil:   "uk.org.marginal.qlvideo",
            launchctl: "uk.org.marginal.qlvideo.mdimporter"

  zap trash: "~/Library/Application Support/uk.org.marginal.qlvideo"
end

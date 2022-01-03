cask "antconc" do
  version "4.0.2"
  sha256 "5d335b71900f2843b39aa135828b38f0a0397499167deb500f6da8f2640bcf1e"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  name "AntConc"
  desc "Corpus analysis toolkit for concordancing and text analysis"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  livecheck do
    url :homepage
    regex(/>\s*Mac[^<]*\((\d+(?:\.\d+)+)\)\s*</i)
  end

  app "AntConc.app"

  zap trash: "~/Library/Preferences/AntConc.plist"
end

cask "antconc" do
  version "3.5.9"
  sha256 "faac413a4bd914feec6609b96fcf368fa6e91baeedbd15303a8a0594a38db7dd"

  url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/AntConc.zip"
  appcast "https://www.laurenceanthony.net/software/antconc/releases/",
          must_contain: version.no_dots
  name "AntConc"
  desc "Corpus analysis toolkit for concordancing and text analysis"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  app "AntConc.app"

  zap trash: "~/Library/Preferences/AntConc.plist"
end

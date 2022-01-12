cask "icc" do
  version "1.0,7648"
  sha256 "d512be0aaa6e7189f863b0b80bb4e8cc0fdf86c42bbdec13b8cd3e09218931dd"

  url "https://s3-us-west-2.amazonaws.com/download.chessclub.com/desktop/mac/ICCforMac.r#{version.csv.second}.pkg",
      verified: "s3-us-west-2.amazonaws.com/download.chessclub.com/"
  name "International Chess Club"
  desc "Chess club client"
  homepage "https://www.chessclub.com/"

  livecheck do
    url "https://www.chessclub.com/software-download/icc-for-mac"
    strategy :page_match do |page|
      match = page.match(/>\s*(\d+(?:\.\d+)*)\s*r(\d+)\s*/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  pkg "ICCforMac.r#{version.after_comma}.pkg"

  uninstall pkgutil: "com.chessclub.*"

  zap trash: [
    "~/Library/Preferences/com.chessclub.desktop-icc",
    "~/Library/Saved Application State/com.chessclub.desktop-icc.savedState",
    "~/.cache/internet_chess_club",
    "~/.internet_chess_club",
  ]
end

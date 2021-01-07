cask "iina-plus" do
  version "0.5.7,20120412"
  sha256 "9d886b869dde56abfd91100536aed1d29ead029201d1d97ebca59562b7fdbacc"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.dmg"
  name "IINA+"
  desc "Extra danmaku support for iina. (iina 弹幕支持"
  homepage "https://github.com/xjbeta/iina-plus"

  livecheck do
    url :url
    strategy :git do |tags|
      tags.map do |tag|
        match = tag.match(/(\d+(?:\.\d+)*)\((\d+)\)/i)
        "#{match[1]},#{match[2]}" if match
      end.compact
    end
  end

  app "iina+.app"
end

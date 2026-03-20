cask "dbvr" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.0.0"
  sha256 arm:   "551755c136341680f4247c4b07dcaa4798e6d3ce8857f8868dec83c81046d525",
         intel: "2ffdbe00ff51c1fbad76bf5391d6affba0b4389a804739f9e1c890c7a47da551"

  url "https://downloads.dbeaver.net/dbvr/pro/#{version}/dbvr-pro-#{version}-macos-#{arch}.dmg",
      verified: "downloads.dbeaver.net/dbvr/pro/"
  name "dbvr"
  desc "Lightweight CLI tool for running database operations"
  homepage "https://dbeaver.com/dbvr/"

  livecheck do
    url "https://dbeaver.com/product/dbvr-pro-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: ">= :big_sur"

  app "dbvr.app"

  uninstall signal: ["TERM", "org.dbvr.app.pro.product"]

  zap trash: "~/Library/DBeaverData"
end

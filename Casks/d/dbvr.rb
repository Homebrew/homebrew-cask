cask "dbvr" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.2.0"
  sha256 arm:   "4d26cf7e12d8b552c5f091eefd8ea36e131efcf435b9cc74e7d600dddf274df8",
         intel: "c2799fea12e7e451932bd909dc47fb67f6948ab757e355ebb56ff828491884d2"

  url "https://downloads.dbeaver.net/dbvr/pro/#{version}/dbvr-pro-#{version}-macos-#{arch}.dmg"
  name "dbvr"
  desc "Lightweight CLI tool for running database operations"
  homepage "https://dbeaver.com/dbvr/"

  livecheck do
    url "https://dbeaver.com/product/dbvr-pro-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: :big_sur

  app "dbvr.app"

  uninstall signal: ["TERM", "org.dbvr.app.pro.product"]

  zap trash: "~/Library/DBeaverData"
end

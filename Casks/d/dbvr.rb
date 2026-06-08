cask "dbvr" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.0"
  sha256 arm:   "c4ecbf8e58e310fa49528afafce2503fb80ec0868ad70744f21fb7ef84eb099b",
         intel: "94001a2f6cd4b4562388385fcf91903fb2156645feb751cea82fae48b5b48d3b"

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

  depends_on macos: :big_sur

  app "dbvr.app"

  uninstall signal: ["TERM", "org.dbvr.app.pro.product"]

  zap trash: "~/Library/DBeaverData"
end

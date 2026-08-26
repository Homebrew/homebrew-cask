cask "dbvr-community" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.1.5"
  sha256 arm:   "78af3c6d559821eb45726111fb8dbf694597c0d9cfca8a264d2a79d5b3b91982",
         intel: "f2ac87948ba1b5d2ddbecabd82b8739e2d37017e5a5b9873fbadd1fb25af63e3"

  url "https://dbeaver.io/files/#{version}/dbvr-ce-#{version}-macos-#{arch}.dmg",
      verified: "dbeaver.io/files/"
  name "dbvr Community"
  desc "Lightweight CLI tool for running database operations"
  homepage "https://dbeaver.io/dbvr/"

  livecheck do
    url "https://dbeaver.io/product/dbvr-ce-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  conflicts_with cask: "dbvr"
  depends_on macos: :big_sur

  app "dbvr.app"

  uninstall signal: ["TERM", "org.dbvr.app.ce.product"]

  zap trash: "~/Library/DBeaverData"
end

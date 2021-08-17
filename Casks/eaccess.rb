cask "eaccess" do
  version "1.13.3,97899"
  sha256 "b496682ccaa4b90bdb7a9ae81b631e714235f81481d985c3c752c313dc7d7058"

  url "https://glutz.com/service/downloads/?dwnldid=#{version.after_comma}"
  name "eAccess Desktop"
  desc "Software for eAccess devices"
  homepage "https://glutz.com/service/download/software-and-firmware/"

  livecheck do
    url "https://glutz.com/download-center/category-assets/26303"
    strategy :page_match do |page|
      JSON.parse(page)["assets"].map do |asset|
        v = asset["title"][/Desktop\s+MacOS\s+v?(\d+(?:\.\d+)+)/i, 1]
        "#{v},#{asset["external_id"]}" if v
      end.compact
    end
  end

  depends_on macos: ">= :el_capitan"

  app "eAccess Desktop.app"
  binary "#{appdir}/eAccess Desktop.app/Contents/MacOS/eAccessServer"

  uninstall quit: "com.glutz.eaccessdesktop"

  zap trash: [
    "~/Library/Caches/com.glutz.eaccessdesktop",
    "~/Library/Preferences/com.glutz.eAccess Desktop.plist",
    "~/Library/Saved Application State/com.glutz.eaccessdesktop.savedState",
  ]
end

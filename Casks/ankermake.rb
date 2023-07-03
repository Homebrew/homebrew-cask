cask "ankermake" do
  version "0.9.34_1,PtaR1wXoSj1GXEjC"
  sha256 "6b5bc78e29387b6f1f5f6429e7b380aa53f9978e235154fe7f3eb2444fb8f4e9"

  url "https://public-make-moat-us.s3.amazonaws.com/security/#{version.csv.second}.AnkerMake_V#{version.csv.first}.dmg",
      verified: "public-make-moat-us.s3.amazonaws.com/security/"
  name "AnkerMake"
  desc "Slicer for AnkerMake 3D printers"
  homepage "https://www.ankermake.com/software"

  livecheck do
    url :url
    strategy :page_match do |page|
      match = page.match(%r{security/(.+)\.AnkerMake[._-]v?(\d+(?:.\d+)+)\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end
  depends_on macos: ">= :big_sur"

  app "AnkerMake.app"

  zap trash: [
    "~/Library/Application Support/AnkerMake",
    "~/Library/Application Support/AnkerSlicer",
    "~/Library/Caches/AnkerMake",
    "~/Library/Caches/AnkerSlicer",
    "~/Library/Preferences/com.ankermake.AnkerMake_64bit_fp.plist",
    "~/Library/Preferences/com.ankerslicer.AnkerMake_64bit_fp.plist",
  ]
end

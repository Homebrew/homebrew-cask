cask "realforce" do
  version "3.3.1"
  sha256 "95f501a3d48017d436dab02e8f2581adf2e72f703e3c0e8f8321f9cd0c694ffe"

  url "https://www.realforce.co.jp/support/download/software/mac/files/REALFORCE%20CONNECT%20Software_#{version.dots_to_hyphens}.pkg"
  name "REALFORCE for Mac"
  desc "Software for Realforce keyboards and mice"
  homepage "https://www.realforce.co.jp/"

  livecheck do
    url "https://www.realforce.co.jp/support/download/software/"
    regex(%r{href=.*?/REALFORCE\s*?CONNECT\s*?Software[._-](\d+(?:-\d+)+)\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on macos: ">= :catalina"

  pkg "REALFORCE CONNECT Software_#{version.dots_to_hyphens}.pkg"

  uninstall pkgutil: "com.topre.installpkg.realforce"

  zap trash: [
    "~/Library/Preferences/com.topre.RFRApplication.plist",
    "~/Library/Preferences/com.topre.RFSoftwareR3.plist",
    "~/Library/Saved Application State/com.topre.RFRApplication.savedState",
    "~/Library/Saved Application State/com.topre.RFSoftwareR3.savedState",
  ], rmdir: "~/Documents/Topre"
end

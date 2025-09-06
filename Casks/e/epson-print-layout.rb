cask "epson-print-layout" do
  version "1.5.12"
  sha256 "86c69e14830a0bd232ed2376ae07557fbc712319c93b29902fc654ee3f3c1c71"

  url "https://ftp.epson.com/drivers/EPL_#{version.no_dots}.dmg"
  name "Epson Print Layout"
  desc "Software to layout and print images with Epson printers"
  homepage "https://epson.com/epson-print-layout"

  livecheck do
    url :homepage
    regex(%r{https://ftp\.epson\.com/drivers/EPL_(\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      build = page[regex, 1]
      next if build.empty?

      download_url = "https://ftp.epson.com/drivers/EPL_#{build}.dmg"
      cask = CaskLoader.load(__FILE__)
      app_version = Homebrew::Livecheck::Strategy::ExtractPlist.find_versions(cask:,
                                                                              url:  download_url)[:matches].values

      next if app_version.blank?

      app_version
    end
  end

  depends_on macos: ">= :el_capitan"

  pkg "Epson Print Layout.pkg"

  uninstall pkgutil: "com.epson.printlayout.pkg"

  zap trash: [
    "~/Library/Application Support/com.epson.printlayout",
    "~/Library/HTTPStorages/com.epson.printlayout",
  ]
end

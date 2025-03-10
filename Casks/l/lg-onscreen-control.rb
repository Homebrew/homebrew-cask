cask "lg-onscreen-control" do
  version "7.20,9mZ5Rk4cToGkdcOPTFIUgA"
  sha256 "d2891a3b1b5413d1d55ecb9da6182f374e6d2fb2151d3c56a1efcb7d341e68c0"

  url "https://gscs-b2c.lge.com/downloadFile?fileId=#{version.csv.second}",
      verified: "lge.com/"
  name "LG OnScreen Control"
  desc "Displays all connected LG monitor information"
  homepage "https://www.lg.com/us/support/monitors"

  # There is no page available specifically for the software
  # so we return the downloads from one of the popular products
  livecheck do
    url "https://www.lg.com/us/support/product/lg-27GN950-B.AUS"
    regex(/Mac[._-]OSC[._-]v?(\d+(?:\.\d+)+)\.zip/)
    strategy :page_match do |page, regex|
      json_string = page[/NEXT[._-]DATA[^>]*>\s*([^<]+)\s*</i, 1]
      next if json_string.blank?

      json = Homebrew::Livecheck::Strategy::Json.parse_json(json_string)
      json.dig("props", "pageProps", "softwareData", "fileData")&.map do |_, files|
        files.map do |file|
          match = file["originalFileName"]&.match(regex)
          next if match.blank? || (filename = file["fileName"]).blank?

          "#{match[1]},#{filename}"
        end
      end&.flatten
    end
  end

  depends_on macos: ">= :mojave"

  pkg "OSC_V#{version.csv.first}_signed.pkg"

  postflight do
    system_command "/bin/chmod",
                   args: ["755", "/usr/local", "/usr/local/lmm"],
                   sudo: true
  end

  uninstall quit:       [
              "com.LGSI.OnScreen-Control",
              "com.LGSI.OSCMultiMonitor",
            ],
            login_item: [
              "OnScreen Control",
              "OSCMultiMonitor",
            ],
            pkgutil:    [
              "com.lge.onscreenControl.*",
              "com.lge.OnscreenControl.*",
              "com.OSC.Fonts.pkg",
              "com.OSC_Directory.pkg",
              "com.OSC_Library.pkg",
              "com.OSCApp.pkg",
              "com.OSCMultiMonitor.pkg",
              "com.uninstall.pkg",
              "com.uninstallOSC.pkg",
            ]

  zap trash: [
    "~/Library/Caches/com.LGSI.OnScreen-Control",
    "~/Library/Caches/com.LGSI.OSCMultiMonitor",
    "~/Library/Preferences/com.LGSI.OnScreen-Control.plist",
    "~/Library/Preferences/com.LGSI.OSCMultiMonitor.plist",
  ]
end

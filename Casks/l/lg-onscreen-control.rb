cask "lg-onscreen-control" do
  version "7.29,G56e1FZdOUG7CHk5f6rKA"
  sha256 "e55a752eca033b78892db543e3263a0236eabf16a03efc0748fedc3bea1a303e"

  url "https://gscs-b2c.lge.com/downloadFile?fileId=#{version.csv.second}",
      verified: "lge.com/"
  name "LG OnScreen Control"
  desc "Displays all connected LG monitor information"
  homepage "https://www.lg.com/us/support/monitors"

  # There is no page available specifically for the software
  # so we return the downloads from one of the popular products
  livecheck do
    url "https://www.lg.com/us/support/product/lg-27GN950-B.AUS"
    regex(/Mac[._-]OSC[._-]v?(\d+(?:\.\d+)+)\.zip/i)
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

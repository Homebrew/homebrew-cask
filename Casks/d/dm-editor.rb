cask "dm-editor" do
  version "2.0.1,3243847"
  sha256 "df18c6c5499608ce5fe1fbfb95522a0113f5e4b8cbf068ab2a3b341fd533b94d"

  url "https://usa.yamaha.com/download/files/#{version.csv.second}/"
  name "Yamaha DM Editor"
  desc "Offline editor and remote control for Yamaha DM7 series digital mixers"
  homepage "https://usa.yamaha.com/support/updates/dm-editor-mac.html"

  livecheck do
    url :homepage
    regex(/id="d(\d+)"[^>]*>\s*DM\s+Editor\s+V?(\d+(?:\.\d+)+)\s+for\s+Mac/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: :sonoma

  pkg "dm_edt#{version.csv.first.no_dots}_mac/Yamaha DM Editor V#{version.csv.first}.pkg"

  uninstall quit:    "jp.co.yamaha.pa.dmeditor",
            pkgutil: "com.yamaha.pkg.dmeditor"

  zap trash: [
        "~/Library/Application Support/Yamaha/DM Editor",
        "~/Library/Caches/Yamaha/DM Editor",
      ],
      rmdir: [
        "~/Library/Application Support/Yamaha",
        "~/Library/Caches/Yamaha",
      ]

  caveats do
    license "https://usa.yamaha.com/support/updates/dm-editor-mac.html"
  end
end

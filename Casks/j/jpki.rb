cask "jpki" do
  version "3.9,01-01"
  sha256 "ee7eddf29860eacd7406c91c5113c32a11e51a0e0a8abda387dd728f43255d80"

  url "https://www.jpki.go.jp/client/download/101/JPKIMac_#{version.csv.first.major.rjust(2, "0")}-#{version.csv.first.minor.rjust(2, "0")}_#{version.csv.second}.dmg"
  name "JPKI User Client Software"
  name "公的個人認証サービス 利用者クライアントソフト"
  desc "Digital signature and authentication client for the My Number Card (JPKI)"
  homepage "https://www.jpki.go.jp/"

  livecheck do
    url "https://www.jpki.go.jp/download/mac.html"
    regex(/JPKIMac_(\d+)-(\d+)_(\d+-\d+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].to_i}.#{match[1].to_i},#{match[2]}" }
    end
  end

  depends_on macos: :ventura

  pkg "JPKIInstall.pkg"

  uninstall launchctl: "jp.go.jpki.JPKIUpdateReminder",
            quit:      [
              "jp.go.jpki",
              "jp.go.jpki.JPKIUpdateReminderMain",
              "jp.go.jpki.JPKIUpdateReminderSetting",
              "jp.go.jpki.JPKIUserCertServiceMain",
              "jp.go.jpki.JPKIUtility",
            ],
            pkgutil:   "jp.go.jpki",
            delete:    [
              "/Applications/Utilities/JPKI.localized",
              "/usr/local/lib/JPKI",
            ]

  zap delete: "/private/etc/e-gov_app/load_path/default.dat*",
      trash:  [
        "~/Library/Containers/jp.go.jpki",
        "~/Library/Containers/jp.go.jpki.jpkiSafariAppExtension",
        "~/Library/Group Containers/LQF3UNS9HK.jp.go.jpki",
      ],
      rmdir:  "/private/etc/e-gov_app"

  caveats do
    requires_rosetta
    files_in_usr_local
    <<~EOS
      To use the My Number Card in a browser, enable the JPKI extension in
      Safari > Settings > Extensions, or install the "JPKI利用者ソフト"
      extension from the Chrome Web Store.
    EOS
  end
end

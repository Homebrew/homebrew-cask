cask "jpki" do
  version "4.0,01-01"
  sha256 "701bbb3f338d6a3fad64867827cae9c9ffe3c8e545ee9d0d6d9fb212c599cfc1"

  release_version = version.csv.first.split(".").map { |str| str.rjust(2, "0") }.join("-")
  version_suffix = "_#{version.csv.second}" if version.csv.second
  url "https://www.jpki.go.jp/client/download/101/JPKIMac_#{release_version}#{version_suffix}.dmg"
  name "JPKI User Client Software"
  name "公的個人認証サービス 利用者クライアントソフト"
  desc "Digital signature and authentication client for the My Number Card (JPKI)"
  homepage "https://www.jpki.go.jp/"

  livecheck do
    url "https://www.jpki.go.jp/download/mac.html"
    regex(/href=.*?JPKIMac[._-]v?(\d+(?:[.-]\d+)+)(?:_(\d+(?:[.-]\d+)+))?\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        ver = match[0].tr("-", ".").split(".").map(&:to_i).join(".")
        match[1].present? ? "#{ver},#{match[1]}" : ver
      end
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
  end
end

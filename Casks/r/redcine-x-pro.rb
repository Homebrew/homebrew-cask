cask "redcine-x-pro" do
  version "65.1.3"
  sha256 "b38d616888a3b8efd1820836c59f9eef6dbb92ee36c8cbf03953447a7bce9a36"

  url "https://downloads.red.com/software/rcx/mac/release/#{version}/REDCINE-X_PRO_Build_#{version}.pkg"
  name "REDCINE-X PRO"
  desc "Transcode and manipulate REDCODE RAW footage"
  homepage "https://www.red.com/"

  livecheck do
    url "https://www.red.com/RedSuiteCentric/SCA-Kilimanjaro/services/Download.Service.ss?downloadIdentifier=redcine-x-pro-mac"
    regex(/Build[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :json do |json, regex|
      json["data"]&.map do |item|
        next if item["versionIsBeta"] == "T"

        match = item["versionUrl"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  pkg "REDCINE-X_PRO_Build_#{version}.pkg"

  uninstall pkgutil: [
              "com.red.pkg.REDCINE-XPRO",
              "com.red.pkg.SupportLibs",
            ],
            delete:  "/Applications/REDCINE-X Professional"

  zap trash: [
    "~/Library/Application Support/red",
    "~/Library/Logs/DiagnosticReports/RED PLAYER*",
    "~/Library/Saved Application State/com.red.RED-Tether.savedState",
  ]
end

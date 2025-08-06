cask "redcine-x-pro" do
  version "64.0.25"
  sha256 "415e7bf3a8b6694c22f0f6a40e15a51dcf72a2291e15ff61a605aaa5f9ffb8c0"

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

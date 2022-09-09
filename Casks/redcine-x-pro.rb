cask "redcine-x-pro" do
  version "60.0.28"
  sha256 "07157d55b2db76378b2f5c87f9778775d33aeec4bdf7ab1c0d1b5a3b35bebb9d"

  url "https://downloads.red.com/software/rcx/mac/release/#{version}/REDCINE-X_PRO_Build_#{version}.pkg"
  name "REDCINE-X PRO"
  desc "Transcode and manipulate REDCODE RAW footage"
  homepage "https://www.red.com/"

  livecheck do
    url "https://www.red.com/RedSuiteCentric/SCA-Kilimanjaro/services/Download.Service.ss?downloadIdentifier=redcine-x-pro-mac"
    strategy :page_match do |page|
      json = JSON.parse(page)
      latest = json["data"][0]
      "#{latest["versionMajor"]}.#{latest["versionMinor"]}.#{latest["versionRevision"]}"
    end
  end

  pkg "REDCINE-X_PRO_Build_#{version}.pkg"

  uninstall pkgutil: [
              "com.red.pkg.REDCINE-XPRO",
              "com.red.pkg.SupportLibs",
            ],
            delete:  "/Applications/REDCINE-X Professional"
end

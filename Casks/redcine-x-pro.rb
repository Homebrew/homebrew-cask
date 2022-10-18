cask "redcine-x-pro" do
  version "60.1.2"
  sha256 "e0725378293120fa39a069f131c979ca101cbefc5bd9b4502f0fb605f0de5330"

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

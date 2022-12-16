cask "redcine-x-pro" do
  version "60.2.2"
  sha256 "93526dacdcff4d72bdda5411ae700ba8f3b6aeca5d4e201c0db8afe7a98b536d"

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

cask "redcine-x-pro" do
  version "53.0,51001"
  sha256 "d44cbc953f536bd82a33e1434b2521f3cce8ce22c2c4abb33bf29404e39c0c38"

  url "https://downloads.red.com/software/rcx/mac/release/#{version.major}.#{version.after_comma}/REDCINE-X_PRO_Build_#{version.before_comma}.pkg"
  name "REDCINE-X PRO"
  desc "Transcode and manipulate REDCODE RAW footage"
  homepage "https://www.red.com/"

  livecheck do
    url "https://www.red.com/RedSuiteCentric/SCA-Kilimanjaro/services/Download.Service.ss?downloadIdentifier=redcine-x-pro-mac"
    strategy :page_match do |page|
      json = JSON.parse(page)
      latest = json["data"][0]
      "#{latest["versionMajor"]}.#{latest["versionMinor"]},#{latest["versionRevision"]}"
    end
  end

  pkg "REDCINE-X_PRO_Build_#{version.major_minor}.pkg"

  uninstall pkgutil: [
    "com.red.pkg.REDCINE-X PRO",
    "com.red.pkg.SupportLibs",
  ],
            delete:  "/Applications/REDCINE-X Professional"
end

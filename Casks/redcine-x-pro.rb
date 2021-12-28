cask "redcine-x-pro" do
  version "54.0,51463"
  sha256 "12164f4ce2a40b22c071779a24413eecedde51f2b6fadd71ffaa421f366aba59"

  url "https://downloads.red.com/software/rcx/mac/release/#{version.major}.#{version.csv.second}/REDCINE-X_PRO_Build_#{version.csv.first}.pkg"
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

cask "redcine-x-pro" do
  version "55.1,52132"
  sha256 "3269dce653f65821d66c2ccf0a5cd0eff2d85972373dbc1464b0d295b79f251a"

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

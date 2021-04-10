cask "redcine-x-pro" do
  version "52.2.50136"
  sha256 "d16bd655838b91b7999b8651d4f28347f4e57492cf15c7139328629909b91624"

  url "http://downloads.red.com/software/rcx/mac/release/#{version.major}.#{version.patch}/REDCINE-X_PRO_Build_#{version.major_minor}.pkg"
  name "REDCINE-X PRO"
  homepage "https://www.red.com/"

  livecheck do
    url "https://www.red.com/RedSuiteCentric/SCA-Kilimanjaro/services/Download.Service.ss?downloadIdentifier=redcine-x-pro-mac"
    strategy :page_match
    regex(%r{href=.*?/REDCINE-X_PRO_Build_(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "REDCINE-X_PRO_Build_#{version.major_minor}.pkg"

  uninstall pkgutil: [
    "com.red.pkg.REDCINE-X PRO",
    "com.red.pkg.SupportLibs",
  ],
            delete:  "/Applications/REDCINE-X Professional"
end

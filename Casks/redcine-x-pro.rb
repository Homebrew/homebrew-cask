cask "redcine-x-pro" do
  version "52.1.49582"
  sha256 "37ef15737675493866898b6a6e9125b6418fab65dfe1b9cb9df6588295d19ab5"

  url "http://downloads.red.com/software/rcx/mac/release/#{version.major}.#{version.patch}/REDCINE-X_PRO_Build_#{version.major_minor}.pkg"
  appcast "https://www.red.com/RedSuiteCentric/SCA-Kilimanjaro/services/Download.Service.ss?downloadIdentifier=redcine-x-pro-mac"
  name "REDCINE-X PRO"
  homepage "https://www.red.com/"

  pkg "REDCINE-X_PRO_Build_#{version.major_minor}.pkg"

  uninstall pkgutil: [
    "com.red.pkg.REDCINE-X PRO",
    "com.red.pkg.SupportLibs",
  ],
            delete:  "/Applications/REDCINE-X Professional"
end

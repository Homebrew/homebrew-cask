cask "crypt" do
  version "3,20100429"
  sha256 "e9e82ad331fe26a26ddb9625a9e1ac8e65086770c1abf4bfa503c8336bdf37bd"

  url "https://voluntarylabs.org/crypt/binaries/Crypt#{version.before_comma}_#{version.after_comma}.zip"
  appcast "https://voluntarylabs.org/crypt/index.html"
  name "Crypt"
  homepage "https://voluntarylabs.org/crypt/index.html"

  app "Crypt#{version.before_comma}.app"
end

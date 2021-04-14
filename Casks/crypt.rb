cask "crypt" do
  version "3,20100429"
  sha256 "e9e82ad331fe26a26ddb9625a9e1ac8e65086770c1abf4bfa503c8336bdf37bd"

  url "https://voluntarylabs.org/crypt/binaries/Crypt#{version.before_comma}_#{version.after_comma}.zip"
  name "Crypt"
  desc "App for encrypting and decrypting files and folders"
  homepage "https://voluntarylabs.org/crypt/index.html"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Crypt(\d+)_(\d+(?:\.\d+)*)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  app "Crypt#{version.before_comma}.app"
end

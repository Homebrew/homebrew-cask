cask "astah-professional" do
  version "8.2.0,b743f7"
  sha256 "5c2a2931bb682e71c422d2b3abd16e53106fcc571f85c3f0a7f3a2f00ed3998e"

  # cdn.change-vision.com/files/ was verified as official when first introduced to the cask
  url "https://cdn.change-vision.com/files/astah-professional-#{version.before_comma.dots_to_underscores}-#{version.after_comma}-MacOs.dmg"
  appcast "https://astah.net/download"
  name "Change Vision Astah Professional"
  homepage "https://astah.net/editions/professional"

  pkg "astah professional ver #{version.before_comma.dots_to_underscores}.pkg"

  uninstall pkgutil: "com.change-vision.astahprofessional.astahprofessional.pkg"
end

cask "lazy" do
  version "1.0"
  sha256 :no_check

  url "https://www.lazy-app.com/download/lazy.pkg"
  name "Lazy"
  desc "Control your environment from your keyboard"
  homepage "https://www.lazy-app.com/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.ahmedmen.Bob"].short_version
    end
  end

  pkg "lazy.pkg"

  uninstall quit:    "com.ahmedmen.Bob",
            pkgutil: "com.lazy.pkg.lazy-app"

  zap trash: [
    "~/Library/Application Scripts/com.ahmedmen.Bob",
    "~/Library/Containers/com.ahmedmen.Bob",
  ]
end

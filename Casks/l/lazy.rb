cask "lazy" do
  version "1.0"
  sha256 :no_check

  url "https://www.lazy-app.com/download/lazy.pkg"
  name "Lazy"
  desc "Control your environment from your keyboard"
  homepage "https://www.lazy-app.com/"

  disable! date: "2024-08-05", because: :no_longer_available

  pkg "lazy.pkg"

  uninstall quit:    "com.ahmedmen.Bob",
            pkgutil: "com.lazy.pkg.lazy-app"

  zap trash: [
    "~/Library/Application Scripts/com.ahmedmen.Bob",
    "~/Library/Containers/com.ahmedmen.Bob",
  ]
end
